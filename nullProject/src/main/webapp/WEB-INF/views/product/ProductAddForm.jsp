<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

}

#imgDiv{
	display: inline-block;
	width: 320px; 
	height: 240px; 
	border: 1px solid black;
}

#inputDiv {
	
}

#titleDiv {
	font-size: 28px;	
	font-weight: bold;
	margin-top: 100px;
	margin-bottom: 20px;

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
#productDetail {
	resize: none;
}

</style>
<script type="text/javascript">

function pageMoveListFnc() {
	location.href='./productlist.do';
}
	
function fileCheckFnc() {
	var fileNm = $("#filename").val();
	 
	if (fileNm != "") {
	 
	    var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();
	 
	    if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
	        alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
	        return false;
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
			<div id="titleDiv">상품 등록</div>
			
				<div id="inputDiv">
					<form action='./productaddctr.do' method='post'	enctype="multipart/form-data">
					
						<div id="imgDiv">
					
					</div>
						<div id="textDiv">
							<div class="textInput">
								<label>상품명</label>
								<span><input type='text' name='productName'></span>
							</div>
							<div class="textInput">
								<label>가격</label>
								 <span><input type='number' name='productPrice' 
								 oninput="this.value = Math.abs(this.value)"></span>
							</div>
							<div class="textInput"> 
								<label>원가 </label>
								<span><input type='number' name='productCostprice' 
								oninput="this.value = Math.abs(this.value)"></span>
							</div>
							<div class="textInput">
								<label>재고 </label>
								<span><input type="number" name='productStock' 
								oninput="this.value = Math.abs(this.value)"></span>
							</div>
							<div class="textInput">
								<label>프로필 사진</label>
								 <span><input type="file" name="productPhoto"></span>
							</div>
						</div>
						<div id="textAreaDiv">
							<h3>상세 설명</h3><br> 
							<p><textarea cols="100" rows="10" id="productDetail" name='productDetail'></textarea></p>
							<input type="submit" value="등록">
							<input type="button" value="취소" onclick="pageMoveListFnc()">
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