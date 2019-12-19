<%@page import="com.edu.util.FileUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>

<style type="text/css">
table {
	border-collapse: collapse;
}

#productTitle {
	font-weight: bold;
	text-align: center;
	padding-top: 50px;
	padding-bottom: 50px;
}

li {
	list-style-type: none;
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

.rowDiv {
	/* 	border: 1px solid black; */
	width: 850px;
	height: 520px;
	margin: auto;
}

#contentContainer {
	margin-top: 50px;
}

#nameDiv {
	font-size: 22px;
	font-weight: bold;
}

#textDiv {
	margin-bottom: 20px;
}

#funtionDiv {
	width: 850px;
	height: 200px;
	margin: auto;
}

#stockSpan {
	font-size: 11px;
	color: #4374D9;
}

#pagingForm {
	
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

.imgDiv {
	width: 202px;
	height: 152px;
}
.list-search {
margin-top:30px;
	text-align: center;
	
}
select {
	height: 40px;
	border-radius: 3px;
}
.list-input {
	width: 300px;
	height: 40px;
	border-radius: 3px;
}

.list-submit {
	width: 100px;
	height: 40px;
	background: #0099CC;
	border: none;
	color: white;
	font-size: 18px;
	font-weight: 700;
	border-radius: 4px;
}
</style>
<script type="text/javascript">
	
</script>
</head>

<body>

	<jsp:include page="../common/header.jsp" />
	<div id="contentContainer">
		<div>
			<h2 id="productTitle">여행 기념품</h2>
		</div>

		<div class='rowDiv'>
			<c:forEach var="productDto" items="${productList}">
				<div class='innerDiv'>
					<div>
						<a
							href="./productdetail.do?productNo=${productDto.productNo}&curPage=${pagingMap.paging.curPage}&">
							<div class="imgDiv">
								<img alt="image not found" style="width: 200px; height: 150px;"
									src="<c:url value='/img/${productDto.storedFileName}'/>" />
							</div>
						</a>
					</div>
					<span id="nameDiv">${productDto.productName}</span><br>
					<div id="textDiv">
						<span> ${productDto.productPrice}원 </span><br> <span
							id="stockSpan"> 재고 : ${productDto.productStock}개 </span> <input
							type="hidden" id="productNo" name="productNo"
							value="${productDto.productNo}">
					</div>
				</div>
			</c:forEach>

		</div>
		<div id="funtionDiv">

			<c:choose>
				<c:when test="${memberDto.memberAdmin == '1'}">

				</c:when>
				<c:otherwise>
					<div>
						<form action="./productadd.do" id="productForm" method="get">
							<input type="submit" id="productBtn" value="추가">
						</form>
					</div>
				</c:otherwise>


			</c:choose>
			<div>
				<jsp:include page="/WEB-INF/views/common/Paging.jsp">
					<jsp:param value="${pagingMap}" name="pagingMap" />
				</jsp:include>
			</div>
			<input type="hidden" id="curPage" name="curPage"
				value="${pagingMap.paging.curPage}">
			<div class="list-search">
				<form id="pagingForm" action="./productlist.do" method="post">
					<span id="searchDiv"> <select name="searchOption">
							<c:if test="${searchMap.searchOption == 'productName'}">
								<option value="productName" selected="selected">상품명</option>
							</c:if>
					</select> <input class="list-input" type="text" name="keyword"
						value="${searchMap.keyword}" placeholder="상품명 검색"> <input
						class="list-submit" type="submit" value="검색">
					</span>
				</form>
			</div>
		</div>


	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>