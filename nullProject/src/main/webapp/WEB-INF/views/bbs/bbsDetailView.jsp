<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 조회</title>
<style>

	#detailViewDiv{
		display: table;
		overflow: hidden;
		margin-left: auto;
		margin-right: auto;
		width: 1000px;
	}
		
	.comDiv {
		margin-bottom: 5px;
	
	}

	#googleMap{
		 width:1000px;
		 height: 400px;
	}
	
	#contentDiv > textarea{
		 width:1000px;
		 height:400px;
		 resize: none;
	}

	#cmfirstDiv{
		 margin-top: 100px;
	}
	
	#firstDivSpan{
		font-size: 20px;
	}
	
	#cmWriterId{
		 font-weight: bold;
		 font-size: 15px;
		 margin-bottom: 3px;
	}
	
	#cmContentId{
		 width: 1000px;
		 overflow:hidden;
		 margin-bottom: 3px;
		 resize: none;
	}
	
	#spanBtnId{
		width: 100px;
		margin-bottom: 3px;
	}
	
	#cmContentDiv{
		 margin-top: 5px;
	}
	
	#commentTextareaId{
		 resize:none; 
	}
	
</style>

<script type="text/javascript" 
	src="/nullProject/resources/js/jquery-3.4.1.min.js"></script>

<script type="text/javascript"> 

	//목록
	function pageMoveListFnc(curPage, searchOption, keyword){
	     location.href = './bbsList.do?curPage=' + curPage 
         +'&searchOption='+ searchOption
         +'&keyword=' + keyword;
	}
		
	//수정
	function pageUpdateFnc(curPage, searchOption, keyword, boardState) {
		
		location.href = './cmUpdate.do?curPage=' + curPage 
	        +'&searchOption='+ searchOption
	        +'&keyword=' + keyword;
	}
	
	//삭제
	function commentDeleteFnc(commentNo, boardNo, curPage, searchOption	, keyword){
		
		var url = "./cmDelete.do?commentNo=" + commentNo + "&boardNo=" + boardNo + "&curPage=" + curPage +"&searchOption=" + searchOption + "&keyword=" + keyword;
		var cmInfoObj = document.getElementById('cmInfo');
		
		cmInfoObj.action = url;
		cmInfoObj.submit();
		
	}
	
	//댓글 수정
	function commentUpdateFnc(commentInputTag){
		
		var htmlStr = "";
		htmlStr += '<input type="submit" value="저장">';
		htmlStr += '<input type="hidden" name="boardNo" value="${bbsDto.boardNo}">';
		htmlStr += '<input type="hidden" name="curPage" value="${curPage}">';
		
		var cmContentObj = $(commentInputTag);// this
		
		var cmSpanContentObj = cmContentObj.parent();  //<span>
		
		cmSpanContentObj.html(htmlStr);
		
		var cmDivContentObj = cmSpanContentObj.parent(); // <div>
		
		var cmTextContentObj = cmDivContentObj.children("textarea"); // <textarea>
		
		cmTextContentObj.removeAttr("readonly").focus();
	
	}
	
	//댓글수정 알림
	function cmUpdateCheck(){
		
		alert("댓글이 수정 되었습니다.");	 	
		return true;
	}
	
	//댓글 등록 유효성 검사
	function cmContentCheck() {
		
		if(cmInsertForm.commentContent.value == ""){
			alert("내용을 입력해 주세요.");
			cmInsertForm.commentContent.focus();
			return false;
		}
		
		else return true;		
	}
	
	//바이트 제한
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
	
// 	var pattern_num = /[0-9]/;	// 숫자 
// 	var pattern_eng = /[a-zA-Z]/;	// 문자 
// 	var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
// 	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

// 	if( (pattern_num.test(str)) && !(pattern_eng.test(str)) && !(pattern_spc.test(str)) && !(pattern_kor.test(str)) ){
// 		return true
// 	}else{
// 		alert("숫자만 입력 가능합니다.")
// 		return false
// 	}

	
</script>
</head>

<body>

<jsp:include page="../common/header.jsp" />

<div id="detailViewDiv">
	<div>
		<h1 style="text-align: center;">여행 후기 게시판</h1>
	</div>
	
	<br>
	
	<!-- 1번째 form -->
	<form action='./bbsUpdate.do' method='get'>
	
		<div>
			<table id="boardTitleTableId">
				<tr>
					<td style="width: 910px;">
						제목 : ${bbsDto.boardTitle}<br>
						작성자 : ${bbsDto.memberName}
					</td>
					<td rowspan="2"><fmt:formatDate value="${bbsDto.boardModDate}"
							pattern="yyyy-MM-dd hh:mm:ss"/>
					</td>						
				</tr>
			</table>
		</div>
		
	<br>	
		
<!-- 	 	구글맵  -->
<!-- 		<div id="googleMap"> -->
<!-- 			<script> -->
<!-- 			    function myMap() { -->
<!-- 			       var mapProp = { -->
<!-- 			          center : new google.maps.LatLng(37.47285314959474,127.00958993144536), -->
<!-- 			          zoom : 15, -->
<!-- 			       }; -->
<!-- 			       var map = new google.maps.Map(document.getElementById("googleMap"), -->
<!-- 			             mapProp); -->
<!--			    } -->
<!-- 			</script> -->
<!-- 			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlyVAANbNZh5gGvOagyfIUDwTvZn3SBvg&callback=myMap"></script> -->
<!-- 		</div> -->

	<hr>
	
	<!-- 	내용 -->
		<div id="contentDiv">
			<textarea name='content' readonly="readonly">${bbsDto.boardContent}</textarea>
		</div>
		
		
	<!-- 	게시물 수정버튼 (회원본인, 관리자, 일반회원)-->
		<div>
			<c:choose>
				<c:when test="${sessionScope.memberDto.memberNo eq bbsDto.memberNo}">
					<div style="float:right; margin-right: 30px;">
						<input type='submit' value="수정"> 
						<input type='button' value="목록"
							onclick='pageMoveListFnc(${curPage}, "${searchOption}", "${keyword}");'>
						<input type="hidden" name="boardNo" value='${bbsDto.boardNo}'>
						<input type="hidden" name="curPage" value='${curPage}'> 
						<input type="hidden" name="commentNo" value='${cmDto.commentNo}'>
					</div>
				</c:when>
				<c:when test="${sessionScope.memberDto.memberAdmin eq 0}">
					<div style="float:right; margin-right: 30px;">
						<input type='submit' value="수정"> 
						<input type='button' value="목록"
							onclick='pageMoveListFnc(${curPage}, "${searchOption}", "${keyword}");'>
						<input type="hidden" name="boardNo" value='${bbsDto.boardNo}'>
						<input type="hidden" name="curPage" value='${curPage}'>
						<input type="hidden" name="commentNo" value='${cmDto.commentNo}'>
					</div> 
				</c:when>
				<c:otherwise>
					<div style="float:right; margin-right: 30px;">
						<input type='button' value="목록"
							onclick='pageMoveListFnc(${curPage}, "${searchOption}", "${keyword}");'>
					</div> 
				</c:otherwise>	
		 	</c:choose>
		 </div>
	 </form>

	<div id="cmfirstDiv">
		<span id="firstDivSpan"><strong>댓글</strong></span>
	</div>

	<hr>
	
	<!-- 	댓글 리스트	수정,삭제버튼 (회원본인, 관리자, 일반회원) -->
	<!-- 2번째 form -->
	<div>
		<c:forEach var="cmDto" items="${cmList}">
		<form id='cmInfo' name="cmUpdateForm" action='./cmUpdate.do' method='post' onsubmit="return cmUpdateCheck()">
			<div class="comDiv" >
				<div id="cmWriterId">${cmDto.commentWriter}</div>
					<textarea id="cmContentId" readonly="readonly" name='commentContent'>${cmDto.commentContent}</textarea>
					<span style="color: gray;">
						<fmt:formatDate value="${cmDto.commentCreDate}" pattern="yyyy-MM-dd hh:mm:ss"/>
					</span>
					<input type="hidden" name="boardNo" value="${bbsDto.boardNo}">
					<input type="hidden" name="commentNo" value="${cmDto.commentNo}">
				
				<c:choose>
					<c:when test="${sessionScope.memberDto.memberEmail eq cmDto.commentWriter}">
						<span id='spanBtnId'>
							<input id="updateBtnId" type="button" value="수정" onclick="commentUpdateFnc(this);">
							<input id="deleteBtnId" type="button" value="X" 
							onclick="commentDeleteFnc(${cmDto.commentNo}, ${bbsDto.boardNo}, ${curPage});">
						</span>
						<hr>
					</c:when>
					<c:when test="${sessionScope.memberDto.memberAdmin eq 0}">
						<span id='spanBtnId'>
							<input id="deleteBtnId" type="button" value="X" 
								onclick="commentDeleteFnc(${cmDto.commentNo}, ${bbsDto.boardNo}, ${curPage});">
						</span>
						<hr>
					</c:when>
					<c:otherwise><hr></c:otherwise>
				</c:choose>
			</div>
		</form>
		</c:forEach>
	</div>
	
	<!-- 	댓글 작성 -->
	<h4><strong>댓글 작성</strong></h4>

	<!-- 	3번째form -->
	<div>
		<form name="cmInsertForm" action='./cmWrite.do' method='post' onsubmit='return cmContentCheck()'>
			
			<div>
				<div>
					작성자 : ${memberDto.memberEmail}
					<input type='hidden' name='commentWriter' value='${memberDto.memberEmail}'>
				</div>
				<div>
					<div id="cmContentDiv">
						<textarea id="commentTextareaId" name='commentContent' 
							rows="2" cols="140" placeholder="내용을 입력하세요"
							onkeyup="chkword(this,256)"></textarea>
					</div>
					<div>
						<span>
							<input type='submit' value='등록'>
						</span>
						<span>
							<input type='hidden' name='boardNo' value='${bbsDto.boardNo}'>
							<input type='hidden' name='curPage' value='${curPage}'>
							<input type='hidden' name='searchOption' value='${searchOption}'>
							<input type='hidden' name='keyword' value='${keyword}'>
						</span>
					</div>
				</div>	
			</div>	
			
		</form>
	</div>			
	 
</div>	 

<jsp:include page="../common/footer.jsp" />
	
</body>
</html>