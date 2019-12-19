<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<style type="text/css">
body {
	
}

.top {
	margin-top: 20px;
	border-bottom: 2px solid gray;
	text-align: center;
}

.add-title h1 {
	text-align: center;
}

input {
	width: 500px;
	height: 30px;
}


.add-input {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.tr-line {
	margin: auto;
}

.tr-line td, .tr-line th {
	border: 1px solid #ddd;
	padding: 8px;
}

#doubleCheck {
	color: #191919;
	width: 200px;
	height: 30px;
	background: #F361DC;
	color: white;
	border-radius: 4px;
	font-size: 14px;
	border: none;
	background: #F361DC;
}

.add-name {
	font-weight: 700;
	font-style: inherit;
	background-color: #f2f2f2;
	font-style: inherit;
}

.add-input tr:hover {
	background-color: #ddd;
}

.table-button {
	margin: auto;
	padding: 50px;
}

.table-button button {
	color: #191919;
	padding: 15px;
	width: auto;
	background: #F361DC;
	color: white;
	border-radius: 4px;
	font-size: 18px;
	border: none;
}

.table-button button:hover, button:active {
	background-color: gray;
	border: none;
}

</style>
</head>
 <script language="javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function pageMoveDeleteFnc() {
		location.href = '../login.do';
	}
	
// 	 function emailCheck() {
// 		var requestEmailObj = document.getElementById('requestEmail');
// 		var emailCheckRequestObj = document.getElementById('emailCheckRequest');
		
		

// 		if (requestEmailObj.value == "pass") {
// 			document.getElementById('emailCheckRequest').innerHTML = '사용가능 이메일입니다.';
// 			document.getElementById('emailCheckRequest').style.color = 'blue';


// 		} else if(requestEmailObj.value != "fail") {
// 			document.getElementById('emailCheckRequest').innerHTML = '사용중 이메일입니다.';
// 			document.getElementById('emailCheckRequest').style.color = 'red';

// 		}
		
// 	}
	
	function memberEmailCheckFnc(){

		var formObj = document.getElementById('add-form');

		formObj.action = 'emailCheckCtr.do';
		formObj.submit();
	}

	function checkz() {

		//이메일 공백 확인
	      if($("#email").val() == ""){
	        alert("이메일을 입력해주세요");
	        $("#email").focus();
	        return false;
	      }
	    //비밀번호 공백 확인
	      if($("#pwd1").val() == ""){
	        alert("비밀번호 입력해주세요");
	        $("#pwd1").focus();
	        return false;
	      }
	      //비밀번호 확인 공백 확인
	      if($("#pwd2").val() == ""){
	        alert("비밀번호 확인 입력해주세요");
	        $("#pwd2").focus();
	        return false;
	      }
	      //이름 공백 확인
	      if($("#name").val() == ""){
	        alert("이름 을 입력해주세요");
	        $("#name").focus();
	        return false;
	      }
	      //전화번호 공백 확인
	      if($("#phone").val() == ""){
	        alert("전화번호를 입력해주세요");
	        $("#phone").focus();
	        return false;
	      }
	      //주소 공백 확인
	      if($("#address").val() == ""){
	        alert("주소를 입력해주세요");
	        $("#address").focus();
	        return false;
	      }

	    return true;
	  }

	function chkword(obj, maxlength) {
		var str = obj.value; // 이벤트가 일어난 컨트롤의 value 값
		var str_length = str.length; // 전체길이       
		// 변수초기화     
		var max_length = maxlength; // 제한할 글자수 크기     
		var i = 0; // for문에 사용    
		var ko_byte = 0; // 한글일경우는 2 그밗에는 1을 더함     
		var li_len = 0; // substring하기 위해서 사용    
		var one_char = ""; // 한글자씩 검사한다     
		var str2 = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.       

		for (i = 0; i < str_length; i++) {
			// 한글자추출         
			one_char = str.charAt(i);
			ko_byte++;
		}

		// 전체 크기가 max_length를 넘지않으면         
		if (ko_byte <= max_length) {
			li_len = i + 1;
		}

		// 전체길이를 초과하면     
		if (ko_byte > max_length) {
			alert(max_length + " 글자 이상 입력할 수 없습니다. \n 초과된 내용은 자동으로 삭제 됩니다. ");
			str2 = str.substr(0, max_length);
			obj.value = str2;
		}
		obj.focus();
	}

	function pwdCheck() {
		var pwd1 = document.getElementById('pwd1').value;
		var pwd2 = document.getElementById('pwd2').value;

		if (pwd1 != pwd2) {
			document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
			document.getElementById('same').style.color = 'red';

		} else {
			document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
			document.getElementById('same').style.color = 'blue';

		}
	}

	function inputPhoneNumber(obj) {

		var number = obj.value.replace(/[^0-9]/g, "");
		var phone = "";

		if (number.length < 4) {
			return number;
		} else if (number.length < 7) {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3);
		} else if (number.length < 11) {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3, 3);
			phone += "-";
			phone += number.substr(6);
		} else {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3, 4);
			phone += "-";
			phone += number.substr(7);
		}
		obj.value = phone;
	}
</script>

<body>

	<div class="top">
		<img src="../resources/img/logo.PNG" class="logo">
	</div>
	<div class="add-title">
		<h1>회원가입</h1>
	</div>
	<div class="add-input">
		<form id="add-form" onsubmit="return checkz()" action='./addCtr.do' method='post'
			enctype="multipart/form-data">
			<table class="tr-line">
				<tr>
					
					<td class="add-name">이메일</td>
					<td colspan="3"><input type="hidden" value="${state}" id="requestEmail"><input type='text' name='memberEmail'
						placeholder="이메일 형식에 맞게 45자 이내로 입력하세요" id="email"  onkeyup="emailCheck() " pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
<%-- 						<button style="height: 40px; margin-left : 10px;" value="${memberDto.memberEmail}"onclick="memberEmailCheckFnc();">중복체크</button> --%>
					</td>
					<td><span id="emailCheckRequest"
						style="padding: 10px; font-size: 12px; font-weight: 700;"><a style="font-size: 16px; font-weight: 400;">예)null@user.com</a></span></td>
				</tr>
				<tr>
					<td class="add-name">패스워드</td>
					<td colspan="3"><input type='password' name='memberPassword'
						id='pwd1' placeholder="16자 이내로 입력하세요" onkeyup="chkword(this,16)" ><br></td>
					<td></td>
				</tr>
				<tr>
					<td class="add-name">패스워드확인</td>
					<td colspan="3"><input type='password'
						name='memberPasswordCheck' id='pwd2' placeholder="패스워드 다시 입력하세요"
						onkeyup="pwdCheck()" ></td>
					<td><span id="same"
						style="padding: 10px; font-size: 12px; font-weight: 700;"></span></td>
				</tr>
				<tr>
					<td class="add-name">이름</td>
					<td colspan="3"><input type='text' placeholder="30자 이내로 입력하세요"
						name='memberName' id="name" ></td>
					<td></td>	
				</tr>
				<tr>
					<td class="add-name">전화번호</td>
					<td colspan="3"><input type='tel' name='memberPhone'
						onKeyup="inputPhoneNumber(this);" maxlength="13" id="phone"
						placeholder="전화번호 입력하세요"><br></td>
					<td><a>" - "없이 숫자만 입력하세요</a></td>
				</tr>
				<tr>
					<td class="add-name">주소</td>
					<td colspan="3"><input type='text' name='memberAddress'
						id="address" placeholder="주소 입력하세요"><br></td>
					<td></td>
				</tr>



			</table>
			<table class="table-button">
				<tr>
					<td colspan="2"><button type='submit' value='가입'
							onclick="DosignUp();">가입</button></td>
					<td colspan="2"><button type='button' value='뒤로가기'
							onclick="pageMoveDeleteFnc();">뒤로가기</button></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp" />



</body>
</html>