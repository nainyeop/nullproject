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
.order-commend {
	padding: 70px;
	margin-left: auto;
	margin-right: auto;
}

.order-title {
	font-weight:900;
	font-size:30px;
	text-align: center;
}

.order-date {
	border: 2px solid #A6A6A6;
	margin: auto;
}

.order-tr, .order-tr>td{
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

.order-btn{
	height:100px;
	margin-top:50px;
	margin: auto;
}

.order-btn button:hover, button:active {
	background-color: #008299;
}

.order-btn button {
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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/common_member.js"></script>
<script type="text/javascript">
	function pageMoveListFnc(searchOption, keyword) {

		var url = "./list.do";
		var listFormObj = document.getElementById('detailForm');

		//		다음 위치

		var htmlStr = '';
		htmlStr += '<input type="hidden" name="searchOption" value="'+ searchOption +'">';
		htmlStr += '<input type="hidden" name="keyword" value="'+ keyword +'">';

		listFormObj.innerHTML += htmlStr;

		//		alert(formObj.innerHTML);

		listFormObj.action = url;
		listFormObj.submit();
	}
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<jsp:include page="/WEB-INF/views/member/mypageMenu.jsp" />
	<div class="order-commend">

		<p class="order-title">주문내역<p>
	
	
	<c:choose>
	<c:when test="${memberDto.memberAdmin == 1}">
		
	
	
	</c:when>
		
	</c:choose>
	
	</form>
	
<%-- 	<c:if test="${!empty memberList}"> --%>
	<div>
		
			
			<c:forEach var="orderDto" items="${orderList}">
				<div class='innerDiv'>
					<div>
						<a href="./productdetail.do?productNo=${productDto.productNo}&curPage=${pagingMap.paging.curPage}&">
							<div class="imgDiv"><img alt="image not found" style="width: 200px; height: 150px;"
								src="<c:url value='/img/${productDto.storedFileName}'/>" /></div>
						</a>
					</div>
					<span id="nameDiv">${productDto.productName}</span><br>
					<div id="textDiv">
							<span> ${productDto.productPrice}원 </span><br> 
							<span id="stockSpan"> 재고 : ${productDto.productStock}개 </span>
							<input type="hidden" id="productNo" name="productNo" value="${productDto.productNo}">
					</div>
				</div>
	
			</c:forEach>

		<jsp:include page="/WEB-INF/views/common/Paging.jsp">
			<jsp:param value="${pagingMap}" name="pagingMap"/>
		</jsp:include>
	</div>	
<%-- 	</c:if> --%>
	
	<input type="hidden" id='tempCurPage' name='tempCurPage' 
		value="${pagingMap.Paging.curPage}">
		
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>