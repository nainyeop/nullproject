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

</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<jsp:include page="mypageMenu.jsp" />
	<div class="mypage-commend">
		<p class="mypage-title">내정보<p>
		<form id="detailForm" action='./update.do' method='get'>
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
					<td class="commend-name">보유캐시</td>
					<td class="commend"><fmt:formatNumber value="${memberDto.memberCash}" type="currency" currencyCode="KRW"/><a style="text-decoration: none;color: black;"> 원</a></td>
					
				</tr>
				
			</table>
			
			<table class="mypage-btn">
				<tr>
					<td><button type="submit" value="수정">수정</button></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>