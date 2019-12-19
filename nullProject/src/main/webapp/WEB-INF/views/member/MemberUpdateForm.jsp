<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보수정</title>
<style type="text/css">
.update-commend {
	padding: 150px;
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

.mypage-btn{
	height:100px;
	margin-top:50px;
	margin: auto;
}

.mypage-btn button:hover, button:active {
	background-color: #008299;
}

.mypage-btn button {
    margin-top:70px;
    font-size: 18px;
	width: 70px;
	height:50px;
	background: #4374D9;
	color: white;
	border-radius: 4px;
	border: none;
}
</style>

<script type="text/javascript"
	src="/springHome/resources/js/jquery-3.4.1.min.js"></script>

</head>

<body>

	<jsp:include page="../common/header.jsp" />
	<jsp:include page="mypageMenu.jsp" />

<div class="update-commend">

	<p class="mypage-title">회원정보<p>
	<form id='memberInfoForm' action='./updateCtr.do' method='post'
		enctype="multipart/form-data">
		
			<input type='hidden' name='memberNo' value='${memberDto.memberNo}'><br>
			<input type='hidden' name='memberCash' value='${memberDto.memberCash}'>
			<table class="mypage-date">
				<tr class="mypage-tr">
					<td class="commend-name">이름</td>
					<td class="commend"><input type='hidden' name='memberName' value='${memberDto.memberName}'>${memberDto.memberName}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">이메일</td>
					<td class="commend"><input type='hidden' name='memberEmail' value='${memberDto.memberEmail}'>${memberDto.memberEmail}</td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">전화번호</td>
					<td class="commend"><input type='text' name='memberPhone' value='${memberDto.memberPhone}'></td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">주소</td>
					<td class="commend"><input type='text' name='memberAddress' style="width: 300px;" value='${memberDto.memberAddress}'></td>
				</tr>
		
			</table>
			
			<table class="mypage-btn">
				<tr>
					<td><button type="submit" value="저장하기">저장</button></td>
				</tr>
			</table>
		
	</form>
</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>