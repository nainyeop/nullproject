<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
#user-nav {
	width: 1000px;
	height: 230px;
	margin: auto;
}

#user-homeBtn {
	margin-left:50px;
	color: black;
	float: left;
	line-height: 50px;
	width: auto;
	text-align: center;
}

#logout, #user-myPage, #user-userName, #user-userCash  {
	line-height: 35px;
	font-weight: 900;
	float: right;
	width: 110px;
	text-align: center;
	margin: 10px;
	list-style: none;
}
 #user-userCash {
 	width: 200px;
 }

#logout, #user-myPage {
	list-style: none;
}



#shopping {
	color: black;
	float: left;
	width: 100px;
	line-height: 50px;
	margin-left: 50px;
}

#user-logo {
	width: 150px;
	height: 150px;
	margin: auto auto;
	text-align: center;
}



.user-topnav {
	background-color: gray;
	border-bottom: 2px solid gray;
}

.user-topnav a {
	float: left;
	margin: 0 auto 3px;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 25px;
}

/* .TOPNAV A.ACTIVE { */
/* 	WIDTH: 600PX; */
/* 	COLOR: BLACK; */
/* } */
.user-topnav a.active {
	background-color: #4C4C4C;
	width: 500px;
	color: white;
}


.user-topnav a:hover {
	background-color: #D5D5D5;
	color: black;
}
#logout a:hover {
	background-color: gray;
}

#logout a {
	background-color: #4C4C4C;
	color: white;
	text-align: center;
	text-decoration: none;
	border-radius: 3px;
	padding: 3px;
}
#admin-nav {
	width: 1000px;
	height: 300px;
	margin: auto;
}

.admin-nav-top {
	background: #FFC19E;
	height: 60px;
}

#admin-homeBtn {
margin-left:50px;
	color: black;
	float: left;
	line-height: 50px;
	width: auto;
	text-align: center;
}




#admin-userName {
	line-height: 35px;
	font-weight: 900;
	float: right;
	width: 150px;
	text-align: center;
	margin: 10px;
	list-style: none;

}

#admin-logo {
	width: 150px;
	height: 120px;
	line-height:100px;
	margin: auto auto;
	text-align: center;

}


.admin-topnav{
	margin: 0 auto 3px;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 25px;
	width: 1000px;
	height: 70px;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;

}
.admin-topnav>a{
	padding: 15px;
	color: black;
}

 #admin-userName>a{
	color: black;
}

.admin-topnav>a.active {
	background-color: white;
	color: black;
}

.admin-topnav>a:hover {
	text-decoration: none;
	background-color: #D5D5D5;
	color: black;
}





</style>
<script type="text/javascript">
	
	
function memberDeleteFnc(memberNo){
	

	var htmlStr = '';
	htmlStr += '<input type="hidden" name="no" value="'+ memberNo +'">';

	formObj.innerHTML = formObj.innerHTML + htmlStr;
	
//		alert(formObj.innerHTML);

	formObj.action = './deleteCtr.do';
	formObj.submit();
}

	
</script>
<body>
<c:if test="${sessionScope.memberDto.memberAdmin == 1}">
	<div id="user-nav">

		<a href="/nullProject/home.do"><i id="user-homeBtn" class="fa fa-home"
			style="font-size: 28px"></i></a>
		<a href="<c:url value='/cart/cartlist.do'/>" ><i id="shopping" class="fa fa-shopping-cart"
			style="font-size: 28px"></i></a>



		<ul>
			<li id="logout"><a href="<c:url value='/logout.do'/>"  style="color: white;">
					로그아웃 </a></li>
			<li id="user-myPage"><a href="<c:url value='/mypagePwdCheck.do'/>" style="color: black">내정보/캐쉬충전
							 </a></li>
			<li id="user-userName"><a href="#" style="color: black"> ${memberDto.memberName} 님 </a></li>
			
			<li id="user-userCash">보유캐시 : <fmt:formatNumber value="${memberDto.memberCash}" type="currency"
							currencyCode="KRW" /> 원</li>
		</ul>

		

		<div id="user-logo">
			<a href="#" class="user-logo"><img src="/nullProject/resources/img/logo.PNG" alt=""></a>
		</div>

		<div id="user-menu">

			<div class="user-topnav">


				<a href="/nullProject/product/productlist.do" class="active">여행기념품</a>
				<a href="/nullProject/bbsList.do" class="active">여행후기게시판</a>

			</div>
		</div>

	</div>
	</c:if>
	<c:if test="${sessionScope.memberDto.memberAdmin == 0}">
	
		<div id="admin-nav">
		<div class="admin-nav-top">
			<a href="../home.do"><i id="admin-homeBtn" class="fa fa-home"
				style="font-size: 24px"></i></a>



			<ul>
				<li id="logout"><a href="<c:url value='/logout.do'/>" style="color: white;">
						로그아웃 </a></li>

				<li id="admin-userName"><a href="#"> ${memberDto.memberName} 님
						환영합니다. </a></li>
			</ul>

		</div>

		<div id="admin-logo">
			<a href="#" class="admin-logo"><img src="/nullProject/resources/img/logo.PNG"
				alt=""></a>
		</div>



		<div class="admin-topnav">


			<a href="/nullProject/bbsList.do" class="admin-active">여행후기</a>
			<a href="/nullProject/member/list.do" class="admin-active">회원관리</a>
			<a href="" class="admin-active">주문관리</a>
			<a href="/nullProject/product/productlist.do" class="admin-active">상품관리</a>
<!-- 			<a href="#home" class="admin-active"></a> -->


		</div>


	</div>
	
	
	</c:if>
</body>
</html>