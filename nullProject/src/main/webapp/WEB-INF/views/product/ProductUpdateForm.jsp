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
	margin-left: 30px;
	margin-top: 20px;

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

#imgTag{
	width: 320px; 
	height: 240px;
}

#detailTextDiv {
	border: 1px solid silver;
	width: 717px;
	height: 200px;
	margin-bottom: 20px;
}

#productDetail{
	resize : none;
}

</style>
<script type="text/javascript" 
	src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" 
	src="${pageContext.request.contextPath}/resources/js/common_product.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
//		event 바인딩
		$("a[id^='delete']").on('click', function(e){
			e.preventDefault();
			deleteFileFnc($(this));
		});
	});

	function deleteFileFnc(obj){
		obj.parent().remove();
	}
	
	
	function pageMoveListFnc() {
		location.href='./productlist.do';
	}
	
	function addFileFnc(){
		var obj = $("#fileContent");
		var htmlStr = "";
		
		htmlStr += '<div>';
		htmlStr += '<input type="hidden" id="fileIdx" name="fileIdx" value="">';
		htmlStr += '<input type="file" id="file0" name="file0">';
		htmlStr += '<a href="#this" id="delete0">삭제</a>';
		htmlStr += '<br>';
		htmlStr += '</div>';
	
		obj.html(htmlStr);
		
		$("a[id^='delete']").on("click", function(e){
			e.preventDefault();
			deleteFileFnc($(this));
		});
		
	}
	
	 //상품 정보 입력 유효성 검사
	   function productUpdateCheck(){
		
	      if(productUpdate.productName.value == ""){
	         alert("상품명을 입력해 주세요.");
	         productUpdate.productName.focus();
	         return false;
	      }else if(productUpdate.productPrice.value == ""){
	         alert("가격을 입력해 주세요.");
	         productUpdate.productPrice.focus();
	         return false;
	      }else if(productUpdate.productCostprice.value == ""){
	         alert("원가를 입력해 주세요.");
	         productUpdate.productCostprice.focus();
	         return false;
	      }else if(productUpdate.productStock.value == ""){
	         alert("재고를 입력해 주세요.");
	         productUpdate.productStock.focus();
	         return false;
	      }
	      else return true;
	   }

	 function productDeleteFnc() {
		var url = './productDeleteCtr.do';
		var productInfoObj = document.getElementById('productUpdate');
		
		productInfoObj.action = url;
		productInfoObj.submit();
		 
	}
	
</script>
</head>

<body>
	
		<div>
			<jsp:include page="../common/header.jsp" />
		</div>
		<div id="contentContainer">
			<div id="titleDiv">상품 수정</div>
				<div id="infoDiv">
					<div id="inputDiv">
						<form action='./productupdatectr.do' method='post' id="productUpdate"	enctype="multipart/form-data" onsubmit="return productUpdateCheck();">
							<div id="imgDiv">
								<img alt="image not found" id="imgTag" src="<c:url value='/img/${productDto.storedFileName}'/>"/>
							</div>
							<div id="textDiv">
								<div class="textInput">
									<label>상품명</label>
									<span><input type='text' name='productName' value="${productDto.productName}"></span>
								</div>
								<div class="textInput">
									<label>가격</label>
									 <span><input type='number' name='productPrice' value="${productDto.productPrice}"
														oninput="this.value = Math.abs(this.value)"></span>
								</div>
								<div class="textInput"> 
									<label>원가 </label>
									<span><input type='number' name='productCostprice' value="${productDto.productCostprice}"
														oninput="this.value = Math.abs(this.value)"></span>
								</div>
								<div class="textInput">
									<label>재고 </label>
									<span><input type="number" name='productStock' value="${productDto.productStock}"
									   					oninput="this.value = Math.abs(this.value)"> </span>
								</div>
								<div class="textInput">
									<label>프로필 사진</label>
									<input type="file" id="file" name="file">
									<div id="fileContent"> 
										<div>
										<c:choose>
											<c:when test="${productDto.storedFileName == ''}">
											</c:when>
											<c:otherwise>

												<input type="hidden" id="fileIdx" name="fileIdx" value="${productDto.imgIdx}">
												${productDto.originalFileName}
												(${fileDto.fileSize}kb)<a href="#this" id="delete_${obj.index}">삭제</a>
												<br>

											</c:otherwise>
										</c:choose>
										</div>
									</div>
								</div>
							</div>
							<div id="textAreaDiv">
								<h3>상세 설명</h3><br> 
								<p><textarea cols="100" rows="10" id='productDetail' name='productDetail'>${productDto.productDetail}</textarea></p>
								<input type="submit" value="수정">
								<input type="button" value="취소" onclick="pageMoveListFnc()">
								<input type="hidden" name="productNo" value="${productDto.productNo}">
								<input type="button" value="삭제" onclick="productDeleteFnc(${productDto.productNo});" >
							</div>
						</form>
					</div>
				
			</div>
		</div>
		
		<div>
			<jsp:include page="../common/footer.jsp" />
		</div>
	

</body>
</html>