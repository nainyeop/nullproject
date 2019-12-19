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
#contentContainer{
/*  	border: 1px solid black;  */
	width: 900px;
	margin: auto;
	
}
#tableHeadDiv { 
	width: 900px;
	text-align: center;
/* 	float: left; */
}

.productNameDiv {
	border: 1px solid black;
	height: 50px;
	width: 460px;
	float: left;
	padding : 15px;
	
}

.productPriceDiv {
	border: 1px solid black;
	height: 50px;
	width: 120px;
	float: left;
	padding : 15px;
}

.productCountDiv{
	border: 1px solid black;
	height: 50px;
	width: 120px;
	float: left;
	padding : 15px;
}

.cartPriceDiv{
	border: 1px solid black;
	height: 50px;
	width: 130px;
	float: left;
	padding : 15px;
}

.cartDeleteDiv{
	border: 1px solid black;
	height: 50px;
	width: 70px;
	float: left;
	padding : 15px;
}

	.productCountInput{
		width: 90px;
		height: 20px;
	}

.productHeader{
	background-color: #CCCCCC;
}

#innerCashDivSmall{
	font-size: 50px;
}


</style>
<script type="text/javascript" 
		src="${pageContext.request.contextPath}/resources/js/common_product.js"></script>
<script type="text/javascript">

	function productPageMoveListFnc(curPage){
		location.href = '../product/productlist.do';
		
	}

	//onchange 총 금액 변화, 재고보다 많은 양 x
	function limitFnc(no){
		var productCountInput = document.getElementById('productCountInput_' + no).value * 1; // 입력값
		var productStock = document.getElementById('productStock_' + no).value * 1; // 재고
		var cartFormId = document.getElementById('cartFormId');
		var cartProductNoId = document.getElementById('cartProductNoId');
		var cartProductCountId = document.getElementById('cartProductCountId');
		
		if(productCountInput > productStock){
			alert('재고보다 많이 구매할 수 없습니다.');
			document.getElementById('productCountInput_' + no).value = 1;
			return;
		}else{
			cartProductNoId.value = no;
			cartProductCountId.value = productCountInput;
			
			cartFormId.action = "./cartupdate.do";
			cartFormId.submit();
		}
	
	}

</script>
</head>

<body>
	
	<div>
		<jsp:include page="../common/header.jsp" />
	</div>
	
	<div>
		<div id="contentContainer">
			<c:choose>
				<c:when test="${cartDto.cartTotalprice == 0}">
					장바구니가 비어있습니다
				</c:when>
				<c:otherwise>
					<form name="form" id="cartFormId" method="post" action="../order/orderPayment.do">
						<div id="tableHeadDiv">
							<div class="productNameDiv productHeader"><label>상품명</label></div>
							<div class="productPriceDiv productHeader"><label>상품 가격</label></div>
							<div class="productCountDiv productHeader"><label>수량</label></div>
							<div class="cartPriceDiv productHeader"><label>총 금액</label></div>
							<div class="cartDeleteDiv productHeader"><label>삭제</label></div>
						</div>
						<c:forEach var="cartDto" items="${map.list}" varStatus="i">
							<div>
								<div class="productNameDiv">
									${cartDto.cartProductName}
								</div>
								<div class="productPriceDiv">
									<fmt:formatNumber pattern="###,###,###" value="${cartDto.cartProductPrice}"/>
								</div>
								<div class="productCountDiv"> 
									<input type="number" class="productCountInput" id="productCountInput_${cartDto.cartProductNo}" value="${cartDto.cartProductCount}"  min="1" value="1"
										oninput="this.value = Math.abs(this.value)" onchange="limitFnc(${cartDto.cartProductNo});">
									<input type="hidden" id="productStock_${cartDto.cartProductNo}"  value="${cartDto.productStork}">
								</div>
								<div class="cartPriceDiv">
									${cartDto.cartProductPrice * cartDto.cartProductCount}
								</div>
								<div class="cartDeleteDiv">
									<a href="./cartdetele.do?cartNo=${cartDto.cartNo}">[삭제]</a>
								</div>
							</div>
							<input type="hidden" id="cartProductNoId" name="cartProductNo" value="${cartDto.cartProductNo}">
							<input type="hidden" id="cartProductCountId" name="cartProductCount" value="${cartDto.cartProductCount}">
						</c:forEach>
						<div id="cashDiv">
							<span id="innerCashDivSmall">필요캐시 : <fmt:formatNumber pattern="###,###,###" value="${map.cartTotalPrice}"/></span>
						</div>
						<div id="btnDiv">
							<input type="submit" value="결제">
<%-- 								<input type="button" value="상품목록으로" onclick="productPageMoveListFnc(${curPage});"> --%>
							<input type="button" value="상품목록으로" onclick="productPageMoveListFnc();">
							<input type="hidden" name="memberNo" value="${memberDto.memberNo}">
							<input type="hidden" name="cartTotalPrice" value="${map.cartTotalPrice}">
						</div>
					</form>
				
				</c:otherwise>
			</c:choose>		
		</div>
	</div>
	
	<div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>