<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nullProject</title>

<style type="text/css">
#indexForm {
text-align:center;
width: auto;
}
</style>

<script type="text/javascript">
	window.onload = function(){
		var loginBtnObj = document.getElementById('loginBtn');
	
		loginBtnObj.addEventListener('click', function(){
			var formObj = document.getElementById('indexForm');
	
			formObj.submit();
		});
	}
	
	
	
</script>	

</head>
<body>

<form action="./login.do" id="indexForm" method="get">
	<input type="image" src="resources/img/index.JPG" id="loginBtn">
</form>

</body>
</html>