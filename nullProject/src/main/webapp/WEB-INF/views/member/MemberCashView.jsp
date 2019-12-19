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
.mypage-commend {
	padding: 70px;
	margin-left: auto;
	margin-right: auto;
}

.mypage-title {
	font-weight: 900;
	font-size: 30px;
	text-align: center;
}

.mypage-date {
	border: 2px solid #A6A6A6;
	margin: auto;
}

.mypage-tr, .mypage-tr>td {
	border: 1px solid #A6A6A6;
}

.commend-name {
	background: #D5D5D5;
	padding: 15px;
	width: 150px;
	font-weight: 700;
}

#commend {
	font-size: 16px;
	font-weight: 800;
}

.commend {
	padding: 15px;
	width: 300px;
}

.mypage-btn {
	height: 100px;
	margin: auto;
}

.mypage-btn button:hover, button:active {
	background-color: #008299;
}

.mypage-btn button {
	margin-top: 70px;
	font-size: 18px;
	width: 70px;
	height: 50px;
	background: #4374D9;
	color: white;
	border-radius: 4px;
	border: none;
}

.point-text {
	margin-top: 50px;
	font-weight: 700;
	text-align: center;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/common_member.js"></script>
<script type="text/javascript">
	function cashCheck() {
		var cash = document.getElementById('cash').value;
		var cash2 = document.getElementById('inputCash').value;
		cashNum = Number(cash);

		cash2Num = Number(cash2);
		if (cash2Num == 0 || cash2Num >= 1000000000+cash) {

			document.getElementById('inputCash').value = "";
			cashNum = 0;

		}
		
		var totalCashNum = cashNum + cash2Num;

		var cash3 = totalCashNum.toString();

		var totalCash = "";
		if (cash3.length < 4) {
			totalCash = cash3;
		} else if (cash3.length < 5) {
			totalCash += cash3.substr(0, 1);
			totalCash += ",";
			totalCash += cash3.substr(1);
		}else if (cash3.length < 6) {
			totalCash += cash3.substr(0, 2);
			totalCash += ",";
			totalCash += cash3.substr(2);
		}else if (cash3.length < 7) {
			totalCash += cash3.substr(0, 3);
			totalCash += ",";
			totalCash += cash3.substr(3);
		} else if (cash3.length < 8) {
			totalCash += cash3.substr(0, 1);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(4);
		}else if (cash3.length < 9) {
			totalCash += cash3.substr(0, 2);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(5);
		}else if (cash3.length < 10) {
			totalCash += cash3.substr(0, 3);
			totalCash += ",";
			totalCash += cash3.substr(1, 3);
			totalCash += ",";
			totalCash += cash3.substr(6);
		} else if (cash3.length < 11) {
			totalCash += cash3.substr(0, 1);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(7);
		}else if (cash3.length < 12) {
			totalCash += cash3.substr(0, 2);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(1,3);
			totalCash += ",";
			totalCash += cash3.substr(8);
		}else if (cash3.length < 13) {
			totalCash += cash3.substr(0, 3);
			totalCash += ",";
			totalCash += cash3.substr(1, 3);
			totalCash += ",";
			totalCash += cash3.substr(1, 3);
			totalCash += ",";
			totalCash += cash3.substr(9);
		}

		document.getElementById('same').innerHTML = "￦ " + totalCash + " 원";
		document.getElementById('same').style.color = 'black';

	}
	function inputNumCheckFnc(){
		var cash2 = document.getElementById('inputCash').value;
		cash2Num = Number(cash2);
		
		if(cash2Num >= 0){
			alert("충전 성공하였습니다.")
			
		}else{
			alert("충전 실패입니다.")
			document.getElementById('inputCash').value = 0;
		}

		
	}
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<jsp:include page="mypageMenu.jsp" />
	<div class="mypage-commend">
		<p class="mypage-title">캐시 충전 </p>
			<input type='hidden' name='memberCash'
				value='${memberDto.memberCash}' id="cash"><br><form id="detailForm" action='./updateCtr.do' method='post'
			enctype="multipart/form-data">
			<input type='hidden' name='memberNo' value='${memberDto.memberNo}'><br>
			<input type='hidden' name='memberName'
				value='${memberDto.memberName}'><br> <input
				type='hidden' name='memberEmail' value='${memberDto.memberEmail}'><br>
			<input type='hidden' name='memberPhone'
				value='${memberDto.memberPhone}'><br> <input
				type='hidden' name='memberAddress'
				value='${memberDto.memberAddress}'><br>
			<table class="mypage-date">
				<tr class="mypage-tr">
					<td class="commend-name">보유 캐시</td>
					<td class="commend" id="commend">  <fmt:formatNumber
							value="${memberDto.memberCash}" type="currency"
							currencyCode="KRW" /><a
						style="text-decoration: none; color: black;"> 원</a></td>
				</tr>
				<tr class="mypage-tr">
					<td class="commend-name">충전할 금액</td>
					<td class="commend"><input type="number"
						placeholder="금액 입력하세요" name="memberCash" id="inputCash"  min="1"  required
						onkeyup="cashCheck()"></input></td>
				</tr>

				<tr class="mypage-tr">
					<td class="commend-name">충전 후 금액</td>
					<td class="commend"><span id="same"
						style="padding: 10px; font-size: 18px; font-weight: 700;">
						<fmt:formatNumber value="${memberDto.memberCash}" type="currency"
							currencyCode="KRW" /> 원</span></td>
				</tr>
			</table>
			<div class="point-text">
				<p>nULL Mall이용시 1원당 1원으로 사용가능합니다.</p>
			</div>
			<table class="mypage-btn">
				<tr>
					<td><button type="submit" value="충전" onclick="inputNumCheckFnc();">충전</button></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>