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
		<form id="detailForm" action='./update.do' method='get'>
			<input type='hidden' name='memberNo' value='${orderDto.memberNo}'><br>
			<table class="order-date">
				<tr class="order-tr">
					<td class="commend-name">이름</td>
					<td class="commend">${orderDto.memberName}</td>
				</tr>
				<tr class="order-tr">
					<td class="commend-name">이메일</td>
					<td class="commend">${orderDto.memberEmail}</td>
				</tr>
				<tr class="order-tr">
					<td class="commend-name">전화번호</td>
					<td class="commend">${orderDto.memberPhone}</td>
				</tr>
				<tr class="order-tr">
					<td class="commend-name">주소</td>
					<td class="commend">${orderDto.memberAddress}</td>
					
				</tr>
				
			</table>
			
			<table class="order-btn">
				<tr>
					<td><button type="submit" value="수정">수정</button></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>