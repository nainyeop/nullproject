<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.container{
		padding-top: 100px;
	
	}
	.mypage-menu{
	text-align: center;
	
	}
	.mypage-menu input{
	border:thin;
	background: #D5D5D5;
	width: 120px;
	height: 50px;
	margin: 20px;
	
	}
	
	.mypage-menu input:active {
	background-color: #D5D5D5;
	color: white;
}


    .mypage-menu input:hover {
	background-color: #4C4C4C;
	color: white;
}

</style>

<script type="text/javascript">

function pageMoveDetailFnc(memberNo){
		var url = '/nullProject/member/detail.do?memberNo=' + memberNo;
		location.href = url;
	}
function pageMoveMemberCashFnc(memberNo){
	var url = '/nullProject/member/cashDetail.do?memberNo=' + memberNo;
	location.href = url;
}

function pageMoveMemberOrderFnc(memberNo){
// 	var url = '/nullProject/order/orderlist.do?memberNo=' + memberNo;
// 	location.href = url;
}
</script>


</head>
<body>

	<div class="container">
	
		<div class="mypage-menu">
			<input id="mypage-detail"type='button' value='회원정보' onclick='pageMoveDetailFnc(${memberDto.memberNo});'>
			<input id="mypage-order"type='button' value='주문내역' onclick='pageMoveMemberOrderFnc(${memberDto.memberNo});'>
			<input id="mypage-cash"type='button' value='캐시충전' onclick='pageMoveMemberCashFnc(${memberDto.memberNo});'>
		</div>
	</div>

</body>
</html>