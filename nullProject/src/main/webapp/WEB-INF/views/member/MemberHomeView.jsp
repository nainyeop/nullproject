<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<style type="text/css">
.all-container {
	width: 1000px;
	height: 1000px;
	margin: auto;
	border-bottom: 2px solid gray;
}

.home-img {
	width: 1000px;
	height: 350px;
}

.home-img>img {
	width: 1000px;
	height: 300px;
}


.innerDiv {
	/* 	border: 1px solid black; */
	width: 202px;
	height: 250px;
	margin-left: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-top: 5px;
	float: left;
}

.contentContainer {
	margin-left: 100px;
}

#nameDiv {
	font-size: 22px;
	font-weight: bold;
}

#textDiv {
	margin-bottom: 20px;
}

#funtionDiv {
	width: 1000px;
	height: 200px;
	margin: auto;
}

#stockSpan {
	font-size: 11px;
	color: #4374D9;
}

#productForm {
	height: 80px;
	width: 50px;
	margin-left: auto;
}

#searchDiv {
	width: 300px;
	margin: auto;
}

.productTitle {
	width: 1000px;
	height: 30px;
	margin: auto;
	margin-bottom: 100px;
}

.productTitle p {
	border-bottom: 2px solid gray;
	float: left;
	font-size: 30px;
	font-weight: 700;
}

.imgDiv {
	width: 202px;
	height: 152px;
}
</style>


</head>

<body>
	<c:if test="${sessionScope.memberDto.memberAdmin == 1}">
		<jsp:include page="../common/header.jsp" />
		<div class="all-container">
			<div class="home-img"><img src="/nullProject/resources/img/blue-hole_large2.jpg" alt=""></div>
			<div class="productTitle">
				<p>여행 간 기분만 낼 수 있는 기념품</p>
			</div>
			<div class="contentContainer">


				<div class='rowDiv'>
					<c:forEach var="productDto" items="${productList}">
						<div class='innerDiv'>
							<div>

								<a
									href="./product/productdetail.do?productNo=${productDto.productNo}&curPage=${pagingMap.paging.curPage}&">
									<div class="imgDiv">
										<img alt="image not found"
											style="width: 200px; height: 150px;"
											src="<c:url value='/img/${productDto.storedFileName}'/>" />
									</div>
								</a>

							</div>
							<span id="nameDiv" onclick="moveProductDetailFcn();">${productDto.productName}</span><br>
							<div id="textDiv">
								<span> ${productDto.productPrice}원 </span><br> <span
									id="stockSpan"> 재고 : ${productDto.productStock}개 </span> <input
									type="hidden" id="productNo" name="productNo"
									value="${productDto.productNo}">
							</div>
						</div>
					</c:forEach>

				</div>


			</div>
		</div>

		<jsp:include page="../common/footer.jsp" />
	</c:if>
	<c:if test="${sessionScope.memberDto.memberAdmin == 0}">
		<jsp:include page="../admin/adminHomeView.jsp" />

	</c:if>
</body>
</html>