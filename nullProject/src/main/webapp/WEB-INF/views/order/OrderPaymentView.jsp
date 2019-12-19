<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 결제 페이지</title>

<style type="text/css">

   #orderPaymentViewDiv{
      width: 1000px;
      margin-left: auto;
      margin-right: auto;
      
   }
   
   #firstDiv span{
      font-weight: bold;
      font-size: 30px;
   }
   
   #firstDiv{
   
      width: 1000px;
      height: 100px;
   }
   
   #secondDiv{
      margin-top: 70px;
      margin-left: 150px;
      width:700px;
   }
 
   #thirdDiv{
   margin-top: 20px;
   margin-left: 150px;
   width: 700px;
   }
   
   #fourDiv{
   margin-top: 30px;
   margin-left: 250px;
   width: 700px;
   }
   
   #col1{
      float: left;
      width: 500px;
      height: 50px;
      display: inline-block;
      padding: 5px 20px 5px 20px;
      background-color: #D8D8D4;
      border: 1px solid black;
   }
   
   #col3{
      width: 500px;
      height: 50px;
      display: inline-block;
      padding: 5px 20px 5px 20px;
      background-color: #D8D8D4;
      border: 1px solid black;
   }
   
   #col2{
      width: 500px;
      height: 100px;
      display: inline-block;
      float: right;
      padding: 30px 20px 30px 20px;
      background-color: #D8D8D4;
      border: 1px solid black;
   }
   
   .colOne{
   display: inline-block;
   border: 1px solid black;
   width: 168px;
   height: 58px;
   float: left;
   background-color: #CCCCCC;
   padding: 20px;
   margin-bottom: 2px;
   margin-right: 2px;
   }
   
   .colTwo{
   display: inline-block;
   border: 1px solid black;
   width: 528px;
   height: 58px;
   background-color: #FFFFFF;
   padding: 15px;
   margin-bottom: 2px;
   margin-right: 2px;
   }
   
   .infoInput{
   width: 300px;
   }
   
   #thirdDiv span{
   font-size: 15px;
   font-weight: bold;
   }
   
   #shippingInfoInputId{
   font-size:20px;
   font-weight: bold;
   }
   
   #getMyInfoBtn{
   margin-left: 10px;
   }
   
   #cashBtn{
   width: 100px;
   }
   
   #payBtn{
   width: 300px;
   }
   
   #basketBtn{
   width: 100px;
   }
   
             
#cashBtn{}
#payBtn{}
#basketBtn{}
   
</style>
<script type="text/javascript">

   function myInfoFnc() {
      
      var htmlStr = "";
      htmlStr += '<div>';
      htmlStr += '<span class="colOne">받는 사람</span>';
      htmlStr += '<span class="colTwo"><input type="text" class="infoInput" name="memberName" value="${memberDto.memberName}"></span>';
      htmlStr += '<span class="colOne">이메일</span>';
      htmlStr += '<span class="colTwo"><input type="text" class="infoInput" name="memberEmail" value="${memberDto.memberEmail}"></span>';
      htmlStr += '<span class="colOne">전화 번호</span>';
      htmlStr += '<span class="colTwo"><input type="text" class="infoInput" name="memberPhone" value="${memberDto.memberPhone}"></span>';
      htmlStr += '<span class="colOne">주소</span>';
      htmlStr += '<span class="colTwo"><input type="text" class="infoInput" name="memberAddress" value="${memberDto.memberAddress}"></span>';
      htmlStr += '<span class="colOne">배송시 요청사항</span>';
      htmlStr += '<span class="colTwo"><input type="text" style="width: 500px;" name="AddDeliveryInsuluctions"></span>';
      htmlStr += '</div>';
     
      var formObj = document.getElementById('shippingInfoId'); // <form>
//       formObj.html(htmlStr);
      formObj.innerHTML = htmlStr;
   }
   
//       var formObj = divObj.parent; // <form> 자바스크립트
//       var formObj = $(divObj).parent(); // <form> 제이쿼리
   
     
      

   
   //배송지 입력 유효성
   function orderAddCheck(){
	
      if(shippingInfoName.memberNo.value == ""){
         alert("이름을 입력해 주세요.");
         shippingInfoName.memberNo.focus();
         return false;
      }else if(shippingInfoName.memberEmail.value == ""){
         alert("이메일을 입력해 주세요.");
         shippingInfoName.memberEmail.focus();
         return false;
      }else if(shippingInfoName.memberPhone.value == ""){
         alert("번호를 입력해 주세요.");
         shippingInfoName.memberPhone.focus();
         return false;
      }else if(shippingInfoName.memberAddress.value == ""){
         alert("주소를 입력해 주세요.");
         shippingInfoName.memberAddress.focus();
         return false;
      }else if(shippingInfoName.cashMinusPrice.value*1 < 0) {
    	 alert("잔액이 부족합니다. 충전 후 결제 해주세요");
    	 return false;
      }
      else return true;
   }

	function pageMoveCashFnc(memberNo){
		var url = '/nullProject/member/cashDetail.do?memberNo=' + memberNo;
		location.href = url;
	}
	

	function pageMoveBasket(){
		var url = '/nullProject/cart/cartlist.do';
		location.href = url;
	}
	
	
	
</script>
</head>

<body>

<jsp:include page="../common/header.jsp" />
   
<div id="orderPaymentViewDiv">
<!-- 캐시확인 -->
   <div id="firstDiv">
	   <span id="col1">필요 캐시 :<fmt:formatNumber pattern="###,###,###" value="${cartTotalPrice}"/></span>
	   <span id="col2">결제 후 캐시 : <fmt:formatNumber pattern="###,###,###" value="${memberDto.memberCash - cartTotalPrice}"/></span>
	   <span id="col3">보유 캐시 :<fmt:formatNumber pattern="###,###,###" value="${memberDto.memberCash}"/></span>

   </div>

<!-- 배송지 -->
   <div id="secondDiv">
      <span id="shippingInfoInputId">배송지 정보 입력</span>
      <span><input type="button" id="getMyInfoBtn" value="내정보가져오기" onclick="myInfoFnc();"></span>
   </div>
	
      <form name="shippingInfoName" action='./orderAdd.do' method='post' onsubmit="return orderAddCheck();">
  		 <div id="thirdDiv">
        	 <div  id="shippingInfoId" >
	            <span class="colOne">받는 사람</span>
	            <span class="colTwo"><input type="text" class="infoInput" name="memberName" placeholder="이름을 입력하세요"></span>
	            <span class="colOne">이메일</span>
	            <span class="colTwo"><input type="text" class="infoInput" name="memberEmail" placeholder="이메일을 입력하세요"></span>
	            <span class="colOne">전화 번호</span>
	            <span class="colTwo"><input type="text" class="infoInput" name="memberPhone" placeholder="전화번호를 입력하세요"></span>
	            <span class="colOne">주소</span>
	            <span class="colTwo"><input type="text" class="infoInput" name="memberAddress" placeholder="주소를 입력하세요"></span>
	            <span class="colOne">배송시 요청사항</span>
	            <span class="colTwo"><input type="text" style="width: 500px;" name="orderRequirement" placeholder="요청사항을 입력하세요"></span>
	         </div>
	         
	         <input type="hidden" name="cartTotalPrice" value="${cartTotalPrice}">
	         <input type="hidden" name="cashMinusPrice" value="${memberDto.memberCash - cartTotalPrice}">
		     <input type="hidden" name="memberNo" value="${memberDto.memberNo}">
		     <c:forEach var="cartDto" items="${cartList}">  	
			     <input type="hidden" name="cartProductNo" value="${cartDto.cartProductNo}">
			     <input type="hidden" name="cartProductCount" value="${cartDto.cartProductCount}">
			     <input type="hidden" name="cartNo" value="${cartDto.cartNo}">
		     </c:forEach>
  		 </div>
   
<!--    버튼    -->
	   <div id="fourDiv">
		      <input type="button" id="cashBtn" value="충전하기" onclick="pageMoveCashFnc(${memberDto.memberNo});">
		      <input type="submit" id="payBtn" value="결제">
		      <input type="button" id="basketBtn" value="장바구니로" onclick="pageMoveBasket();">
		   </div>
	</form> 
 

</div>
   
<jsp:include page="../common/footer.jsp" />
   
</body>
</html>