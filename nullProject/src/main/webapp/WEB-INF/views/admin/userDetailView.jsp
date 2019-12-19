<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보</title>
<style type="text/css">
.mypage-commend {
	padding: 70px;
	margin-left: auto;
	margin-right: auto;
}

.mypage-title {
	font-weight:900;
	font-size:30px;
	text-align: center;
}

.mypage-date {
	border: 2px solid #A6A6A6;
	margin: auto;
}

.mypage-tr, .mypage-tr>td{
	border: 1px solid #A6A6A6;
}



.commend-name {
	background: #D5D5D5;
	padding: 15px;
	width: 100px;
	font-weight: 700;
}

.commend {
	padding: 15px;
	width: 300px;
}


.mypage-btn {
	margin: auto;
	margin-top:100px;
	
}



.detail-btn{
	
	width:120px;
	height:50px;
	margin: auto;
	border-radius: 3px;
	text-align:center;
	background-color: #4C4C4C;
	text-decoration: none;
	font-size: 20px;
    font-weight:700;
    color: white;
    border: none;
}



.mypage-btn input:hover, input:active  {
	background-color: #5D5D5D;
	color: #FFD9EC;
	
}


</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/common_member.js"></script>
<script type="text/javascript">

	
	function pageMoveListFnc(){
		location.href = '/nullProject/member/list.do';
	}
</script>
</head>

<body>

	<jsp:include page="../common/header.jsp" />

	
	<div class="mypage-commend">
		<p class="mypage-title">내정보<p>
			<input type='hidden' name='memberNo' value='${memberDto.memberNo}'><br>
			<table class="mypage-date">
				<tr class="mypage-tr">
					<td class="commend-name">이름</td>
					<td class="commend">${memberDto.memberName}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">이메일</td>
					<td class="commend">${memberDto.memberEmail}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">전화번호</td>
					<td class="commend">${memberDto.memberPhone}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">주소</td>
					<td class="commend">${memberDto.memberAddress}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">캐시</td>
					<td class="commend">${memberDto.memberCash}원</td>
				</tr>

			</table>
			<table class="mypage-btn">
				<tr>
					<td><input class="detail-btn"type='button' value='회원목록' onclick='pageMoveListFnc();'></td>
				</tr>
			</table>

	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>