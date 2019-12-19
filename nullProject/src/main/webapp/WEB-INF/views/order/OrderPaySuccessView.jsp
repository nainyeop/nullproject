<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

#contentContainer{
	margin-top: 100px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	width: 300px;
	height: 400px;
}

</style>
<script type="text/javascript">

	function productListkFnc() {
		
	location.href = '../home.do';
	}

</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	
	<div id="contentContainer">
	<h1 style="font-weight: bold;">감사합니다!</h1>
	<h3 style="font-weight: bold;">주문 완료 되었습니다.</h3>
	<input type="button" value="메인 페이지로" onclick="productListkFnc();">
	</div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>