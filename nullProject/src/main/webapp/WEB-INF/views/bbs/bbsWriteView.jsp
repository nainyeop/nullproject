<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<style type="text/css">
 
     #writeView {
     
     display: table;
     overflow: hidden;
/*      padding: 150px; */
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
     
</style>
<script type="text/javascript">

	//목록
	function pageMoveListFnc(){
	     location.href = './bbsList.do';
	}

	//유효성 검사
	function boardInsertCheck() {
		
		if(boardWriteForm.boardTitle.value == ""){
			alert("제목을 입력해 주세요.");
			boardWriteForm.boardTitle.focus();
			return false;
		}else if(boardWriteForm.boardContent.value == ""){
			alert("내용을 입력해 주세요.");
			boardWriteForm.boardContent.focus();
			return false;
		}
		else return true;		
	}

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

<div id="writeView">
     <div>
          <h1 style="text-align: center;">여행 후기 게시판</h1>
     </div>
     

     <div>
	     <form name='boardWriteForm' action='./bbsWriteCtr.do' method='post' onsubmit="return boardInsertCheck()">
	          <table>
	              <tr>
	                   <td style="width: 100px; height:40px;" colspan="2">제목
	                   	  <input type='text' name='boardTitle' style="width:700px;
	                   	  		margin-left: 14px;" onkeyup="chkword(this,90)">
	                   </td>
	              </tr>
	              <tr>
	                   <td style="height:40px;">작성자
	                   		<input type='text' readonly="readonly" name='memberName' value="${memberDto.memberName}">
	                   		<input type='hidden' name='memberNo' value="${memberDto.memberNo}">
	                   </td>
	              </tr>
	              
	              <tr>
	                   <td colspan='2'>
	                   		<textarea style="resize:none;" rows="15" cols="139"
	                   		name='boardContent' onkeyup="chkword(this,1300)"></textarea>
	                   	</td>
            	  </tr>
	              
	              <tr>
	                   <td colspan="2">
	                   		<input type="submit" value='등록' style="width:60px;
	                   			margin-left:862px;">
	                   		<input type="button" value='취소' style="width:60px; 
	                   			margin-left:10px;" onclick="pageMoveListFnc();">
	                   </td>
	              </tr>
	          </table>
	      </form>
     </div>         
</div>


<br>
<jsp:include page="../common/footer.jsp" />
</body>
<script type="text/javascript">

</script>
</html>