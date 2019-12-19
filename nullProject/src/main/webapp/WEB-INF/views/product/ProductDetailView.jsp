<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#contentContainer {
	 width: 800px;
	 height: 800px;
	 margin: auto;
}

#textDiv {

	display: inline-block;
	width: 250px;
	height: 240px;
	margin-left: 30px;

}

#imgDiv{
	display: inline-block;
	border: 1px solid black;
	float: left;
	width: 320px;
	height: 240px;
}

#inputDiv {

}

#titleDiv {

	font-size: 28px;	
	font-weight: bold;
	margin-top: 100px;
	margin-bottom: 20px;

}

#infoDiv {

	width: 800px;
	height: 260px;
}

.textInput{

	margin-bottom: 10px;
}
#textAreaDiv{
	margin-bottom: 0px;
}

h3{
	margin: 0px;
	
}
#imgTag{
	width: 320px; 
	height: 240px;
}

#detailTextDiv {
	width: 717px;
	height: 200px;
	margin-bottom: 20px;
}

#productNameDiv {
	font-size: 23px;
	font-weight: bold;
}
#productCount {
	width: 50px;
}

#productDetailTextArea {
	resize: none;
}


</style>
<script type="text/javascript" 
		src="${pageContext.request.contextPath}/resources/js/common_product.js"></script>
		
<script type="text/javascript">
function orderSelectSubmitFnc() {
	
	var count = 0;
	count = document.getElementById("productCount");
	
	if (count.value <= 0) {
		alert("상품갯수를 입력해주세요");
	}
	else if(count.value > 0) {
		document.orderSelectSubmitForm.action = "../cart/cartadd.do";
		document.orderSelectSubmitForm.submit();
	}
}

	function limitFnc(){
		
		var count = 0;
		var stock = 0;
		count = document.getElementById("productCount");
		stock = "${productDto.productStock}";
		
		
		if (Number(count.value) > Number(stock)) {
			alert("재고보다 많은 수를 입력할 수 없습니다.");
			
			document.getElementById("productCount").value = stock;
		}
			
	}

	
</script>
</head>

<body>
	<div>
		<div>
			<jsp:include page="../common/header.jsp" />
		</div>
		<div id="contentContainer">
			<div id="titleDiv">상품 정보</div>
				<div id="inputDiv">
					
						<div id="infoDiv">
							<div id="imgDiv">
								<img alt="image not found" id="imgTag" src="<c:url value='/img/${productDto.storedFileName}'/>" />
							</div>
							<div id="textDiv">
								<div class="textInput" id="productNameDiv">
									<span>${productDto.productName}</span>
								</div>
								<div class="textInput">
									<label>가격</label>
									<span>${productDto.productPrice}</span>
								</div>
								<c:choose>
									<c:when test="${sessionScope.memberDto.memberAdmin eq 0}">
										<div class="textInput"> 
											<label>원가 </label>
											<span>${productDto.productCostprice}</span>
										</div>
									</c:when>
								</c:choose>
								<div class="textInput">
									<label>재고 </label>
									<span>${productDto.productStock}</span>
								</div>
								<c:choose>
									<c:when test="${sessionScope.memberDto.memberAdmin eq 0}">
										<div class="textInput">
											<label>프로필 사진</label>
											 <span>${productDto.originalFileName}</span>
										</div>
									</c:when>
									<c:otherwise>
										<form name="orderSelectSubmitForm" method="post">
											<div class="textInput">
												<label>갯수</label>
<!-- 												<input type="number" name="productCount" id="productCount" value="1"> -->
												<input type="number" name="productCount" id="productCount" min="1" value="1"
													   oninput="this.value = Math.abs(this.value)" onchange="limitFnc();">
											</div>
								
											<div class="buttonDiv">
											
												<input type="button" value="장바구니 담기" onclick="orderSelectSubmitFnc();" style="width: 120px;">
												<input type="button" value="뒤로가기" style="width: 244px; margin-top: 3px;" onclick="productPageMoveListFnc(${curPage});">
												<input type="hidden" name="curPage" value="${curPage}">
												<input type="hidden" name="productNo" value="${productDto.productNo}">
												<input type="hidden" name="memberPoint" value="${memberDto.memberCash}">
												<input type="hidden" name="storedFileName" value="${productDto.storedFileName}">
												<input type="hidden" name="productStock" value="${productDto.productStock}">
											</div>
										</form>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div id="textAreaDiv">
							<h3>상세 설명</h3><br> 
							<div id="detailTextDiv"><textarea cols="100" rows="10" id='productDetailTextArea' readonly="readonly" >${productDto.productDetail}</textarea></div>
							
							<form action='./productupdate.do' method='get'	enctype="multipart/form-data">
							<c:choose>
								<c:when test="${sessionScope.memberDto.memberAdmin eq 0}">
									<div>
										<input type="submit" value="수정">
										<input type="button" value="취소" onclick="productPageMoveListFnc(${curPage});">
										<input type="hidden" name="productNo" value="${productDto.productNo}">
										<input type="hidden" name="storedFileName" value="${productDto.storedFileName}">
										<input type="hidden" name="curPage" value="${curPage}">
									</div>
								</c:when>
							
								
							</c:choose>
							</form>
						</div>
				</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp" />
		</div>
	

</body>
</html>