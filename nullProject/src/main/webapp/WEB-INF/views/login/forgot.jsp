<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

body{
	width: 100%;
	height: 800px;
	margin: auto;

	
}
.top{
	margin-top: 20px;
	border-bottom:2px solid gray;
	text-align: center; 
}

.login-total{
	width: 100%;
	text-align: center; 
}

.login-all {
	border: 2px solid gray;
	width: 400px;
	overflow: auto;
	margin:auto;
	margin-top: 10px;
}

.user-log {
	width: 100px;
	height: 220px;
	border-right: 2px solid gray;
	float: left;
	background: #D5D5D5;
	text-align: center;
}

.log-detail img {
	width: 80px;
	margin-top: 50%;
}

.user-icon {
	border-radius: 50%;
	border: none;
}

.login-nav {
	width: auto;
	float: right;
}

.fa-user {
	color: white;
	width: 80px;
	height: 90px;
	background: #747474;
	border-radius: 50%;
}

.login-table {
	border-spacing: 15px;
	width: 100%;
	text-align: center;
}

.login-table a:link, a:visited {
	background-color: #4C4C4C;
	color: white;
	text-align: center;
	text-decoration: none;
	border-radius: 3px;
	padding: 3px;
}
.login-table button{
	font-size: 18px;
}

.login-table button:hover, button:active {
	background-color: #3DB7CC;
	color: #191919;

}

.login-table a:hover, a:active {
	background-color: gray;
}

.login-table button {
	width: auto;
	background: #008299;
	color: white;
	border-radius: 4px;
}

</style>
<script type="text/javascript">
function pageMoveDeleteFnc() {
	location.href = '../login.do?x=520&y=343';
}
</script>
</head>
<body>

	<div class="top">
		<img src="../resources/img/logo.PNG" class="logo">
	</div>
		<div class="login-total">

	<h1>이메일 찾기</h1>
		<div class="login-all">
			
			<div class="user-log">
				<div class="log-detail">
					<img src="../resources/img/user-icon.png" class="user-icon">
				</div>
			</div>
			<div class="login-nav">
				<form action="forgotCtr.do" method="post">
					<table class="login-table">
						<tr>
							<td style="background: #D5D5D5;">이름</td>
							<td><input type="text" placeholder="이름 입력하세요" name="memberName"
								required></td>
						</tr>
						<tr>
							<td style="background: #D5D5D5;">전화번호</td>
							<td><input type="text" placeholder="전화번호입력하세요"
								name='memberPhone' required></td>
						</tr>
						<tr>
							<td colspan="2"><button type="submit" value="찾기">이메일찾기</button></td>
						</tr>
						<tr>
							<td colspan="2"><button type='button' value='뒤로가기'
							onclick="pageMoveDeleteFnc();">뒤로가기</button></td>
						</tr>
						
					</table>
				</form>
			</div>
		</div>
		<h1>비밀번호 찾기</h1>
		<div class="login-all">
			
			<div class="user-log">
				<div class="log-detail">
					<img src="../resources/img/user-icon.png" class="user-icon">
				</div>

			</div>
			<div class="login-nav">
				<form action="forgotPwdCtr.do" method="post">
					<table class="login-table">
						<tr>
							<td style="background: #D5D5D5;">이메일</td>
							<td><input type="text" placeholder="이메일 입력하세요" name="memberEmail"
								required></td>
						</tr>
						<tr>
							<td style="background: #D5D5D5;">전화번호</td>
							<td><input type="text" placeholder="전화번호입력하세요"
								name='memberPhone' required></td>
						</tr>
						<tr>
							<td colspan="2"><button type="submit" value="찾기">비밀번호찾기</button></td>
						</tr>
						<tr>
							<td colspan="2"><button type='button' value='뒤로가기'
							onclick="pageMoveDeleteFnc();">뒤로가기</button></td>
						</tr>
						
					</table>
				</form>
			</div>
		</div>
		</div>
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>