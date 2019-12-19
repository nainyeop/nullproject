<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>

<style type="text/css">
	#imgDiv{
		width: 1000px;
		margin: auto;
				
	}
	
	#imgDiv>img{
		width: 1000px;
		height: 400px;
	}

</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />
	<div id="imgDiv">
		<img src="/nullProject/resources/img/blue-hole_large2.jpg" alt="">
	</div>	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>