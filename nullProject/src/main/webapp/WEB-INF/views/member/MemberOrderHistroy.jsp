<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

</style>
<script type="text/javascript">

	


</script>
</head>

<body>
	<jsp:include page="../common/header.jsp" />
	
	<div>
		<div>
			<div>주문번호</div>
			<div>주문상품</div>
			<div>주문금액</div>
			<div>주문날짜</div>
		</div>
		<div>
			<c:forEach var="orderDto" items="${orderList}" >
				<div>
					<a href="">
						<span>${orderDto.orderNo}</span>
						<span>${orderDto.orderProductName}</span>
						<span>${orderDto.orderPrice}</span>
						<span>${orderDto.orderDate}</span>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>