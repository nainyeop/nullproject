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
/* 	padding: 70px; */
	margin-left: auto;
	margin-right: auto;
}

.mypage-title {
	font-weight: 900;
	font-size: 30px;
	text-align: center;
}

.mypage-date {
	border: 2px solid #A6A6A6;
	margin: auto;
}

.mypage-tr, .mypage-tr>td {
	border: 1px solid #A6A6A6;
}

.commend-name {
	background: #D5D5D5;
	padding: 15px;
	width: 150px;
	font-weight: 700;
}

#commend {
	font-size: 16px;
	font-weight: 800;
}

.commend {
	padding: 15px;
	width: 300px;
}

.mypage-btn {
	height: 100px;
	margin: auto;
}

.mypage-btn button:hover, button:active {
	background-color: #008299;
}

.mypage-btn button {
	margin-top: 10px;
	font-size: 18px;
	width: 70px;
	height: 50px;
	background: #4374D9;
	color: white;
	border-radius: 4px;
	border: none;
}

.point-text {
	margin-top: 10px;
	font-weight: 700;
	text-align: center;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/common_member.js"></script>
<script type="text/javascript">
	function MoveBackFnc() {
		
		location.href = '/nullProject/home.do';
		
	}


</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	
	<div class="mypage-commend">
			<form id="detailForm" action='./mypagePwdCheckCtr.do' method='post'
			enctype="multipart/form-data">
			<input type='hidden' name='memberNo' value='${memberDto.memberNo}'><br>
			<input type='hidden' name='memberName'
				value='${memberDto.memberName}'><br> <input
				type='hidden' name='memberEmail' value='${memberDto.memberEmail}'><br>
			<input type='hidden' name='memberPhone'
				value='${memberDto.memberPhone}'><br> <input
				type='hidden' name='memberAddress'
				value='${memberDto.memberAddress}'><br>
		<p class="mypage-title">본인확인</p>
			<table class="mypage-date">
				<tr class="mypage-tr">
					<td class="commend-name">비밀번호</td>
					<td class="commend"><input type="password" placeholder="비밀번호"
						name="memberPassword" ></input></td>
				</tr>


			</table>
			<table class="mypage-btn">
				<tr>
					<td><button type="submit" value="확인">확인</button></td>
					<td width="50px;"></td>
					<td ><button  type="button" value="뒤로가기"  style="width:100px" onclick="MoveBackFnc();">뒤로가기</button></td>
				</tr>
				
				
			</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>