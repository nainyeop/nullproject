<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<style type="text/css">
 
     #updateView {
	     display: table;
	     overflow: hidden;
	     margin-left: auto;
	     margin-right: auto;
	     width : 1000px;
	}
	
     table, tr, td{
     	border-collapse: collapse;
     }
     
     #writeBtn{
     	float: right;
     }
     
     #bbsTitle{
     	 width: 900px;
     	 height:40px;
     }
     
     #title{
     	width:800px;
     }
     
     #modDate{
     	 width:80px;
     }
     
     #textarea{
     	resize:none;
     } 
     
     #deleteBtn{
     	 width:60px;
     }
     
     #submitBtn{
     	 width:60px;
     	 margin-right: 10px;
     	 float: right;
     }
     
     #cancelBtn{
     	 width:60px;
     	 margin-left:10px; 
     }
     
     #deleteBtnTd{
     	width: 140px;
     }
</style>
<script type="text/javascript">

	// 목록
	function pageMoveListFnc(){
	     location.href = './bbsList.do';
	}
	
	// 삭제
	function bbsDeleteFnc(){
		var url = './bbsDeleteCtr.do';
		var bbsInfoObj = document.getElementById('bbsInfo');
	
		bbsInfoObj.action = url;
		bbsInfoObj.submit();
	}
	
	// 유효성검사
	function chkword(obj, maxlength) {     
		var str = obj.value; // 이벤트가 일어난 컨트롤의 value 값
		var str_length = str.length; // 전체길이       
		// 변수초기화     
		var max_length = maxlength; // 제한할 글자수 크기     
		var i = 0; // for문에 사용    
		var ko_byte = 0; // 한글일경우는 2 그밗에는 1을 더함     
		var li_len = 0; // substring하기 위해서 사용    
		var one_char = ""; // 한글자씩 검사한다     
		var str2 = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.       
		
		for (i = 0; i < str_length; i++) {         
			// 한글자추출         
			one_char = str.charAt(i);             
		ko_byte++;         
		}  
		
		// 전체 크기가 max_length를 넘지않으면         
		if (ko_byte <= max_length) {             
			li_len = i + 1;         
			}            
		
			// 전체길이를 초과하면     
			if (ko_byte > max_length) {         
				alert(max_length + " 글자 이상 입력할 수 없습니다. \n 초과된 내용은 자동으로 삭제 됩니다. ");         
				str2 = str.substr(0, max_length);         
				obj.value = str2;     
				}     
			obj.focus();   
			}
	
</script>
</head>
<body>
     <jsp:include page="../common/header.jsp" />
     
<br>

<div id="updateView">
     <div>
          <h1 style="text-align: center;">여행 후기 게시판</h1>
     </div>

     <div>
	     <form id="bbsInfo" action='./bbsUpdateCtr.do' method='post'>

	          <table>
	              <tr>
		              <c:choose>
		             	

			              <c:when test="${sessionScope.memberDto.memberNo eq bbsDto.memberNo}">
			              	   <td id="bbsTitle">제목
			                   	  <input id="title" type='text' name='boardTitle' value="${bbsDto.boardTitle}"
			                   	  	onkeyup="chkword(this,100)">
			                   </td>
			              </c:when>   
			              

			              <c:otherwise>
			                   <td id="bbsTitle">제목
			                   	  <input id="title" type='text' name='boardTitle' value="${bbsDto.boardTitle}"
			                   	  	onkeyup="chkword(this,80)" readonly="readonly">
			                   </td>
			              </c:otherwise>  
		              </c:choose>
	              
	                   <td id="modDate">
	                   		<fmt:formatDate value="${bbsDto.boardModDate}" pattern="yyyy-MM-dd hh:mm:ss"/>
	                   </td>
	              </tr>
	              <tr>
	              
	              	<c:choose>
		             	

			              <c:when test="${sessionScope.memberDto.memberNo eq bbsDto.memberNo}">
			              	  <td colspan='2'>
			                   		<textarea id="textarea"rows="16" cols="141" name='boardContent'
			                   			onkeyup="chkword(this,3000)">${bbsDto.boardContent}</textarea>
	                   		  </td>
			              </c:when>  
			                
	
			              <c:otherwise>
			                  <td colspan='2'>
			                   		<textarea id="textarea"rows="16" cols="141" name='boardContent'
			                   			onkeyup="chkword(this,3000)" readonly="readonly">${bbsDto.boardContent}</textarea>
	                   		  </td>
			              </c:otherwise>  
		              </c:choose>
            	  </tr>
	            
	              <tr>
	              	<td>
           		  	<c:choose>
	             	  	<c:when test="${sessionScope.memberDto.memberNo eq bbsDto.memberNo}">
	       		      		<input id="submitBtn" type="submit" value='저장'>
	          		  	</c:when>
          		  		<c:otherwise></c:otherwise>
        		  	</c:choose>
        		  	</td>
                  	<td id="deleteBtnTd">
                  		<input id="deleteBtn" type="button" value='삭제' onclick='bbsDeleteFnc(${bbsDto.boardNo});'>
       		  	   		<input id="cancelBtn" type="button" value='취소' onclick="pageMoveListFnc();">
       		  	   		<input type="hidden" name='boardNo' value='${bbsDto.boardNo}'>
       		  	   </td>
	              </tr>
	          </table>
	          <input type='hidden' name='memberNo' value="${memberDto.memberNo}">
	      </form>
     </div>         
</div>


<br>
<jsp:include page="../common/footer.jsp" />
</body>
<script type="text/javascript">

</script>
</html>