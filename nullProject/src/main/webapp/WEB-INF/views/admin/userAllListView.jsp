<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 조회</title>

<style type="text/css">
table {
	border-collapse: collapse;
	margin: auto;
	border: 2px solid gray;
	width: 700px;
	height: 100px;
}

tr, td, th {
	height:60px;
	border: 1px solid gray;
	color: gray;
}

.list-title>th {
	
	text-align: center;
	font-size: 16px;
	font-weight: 700;
	color: black;
	background: silver;
}


p {
	text-align: center;
	font-weight: 700;
	font-size: 32px;
	padding: 30px;
}

.list-pagging {
	padding: 50px;
	height: 150px;
}

.member-list {
	width: 1200px;
	height: 800px;
	margin: auto;
}

.list-search {
	text-align: center;
	
}

.list-search>input{
	
	
}


select {
	height: 40px;
	border-radius: 3px;
}

.list-common {
	font-size: 18px;
}

.list-common>td {
	padding: 5px;
}

.list-input {
	width: 300px;
	height: 40px;
	border-radius: 3px;
}

.list-submit {
	width: 100px;
	height: 40px;
	background: #0099CC;
	border: none;
	color: white;
	font-size: 18px;
	font-weight: 700;
	border-radius: 4px;
}
</style>
<script type="text/javascript">


	function memberDetailFnc(memberNo) {

		var formObj = document.getElementById('pagingForm');

		var htmlStr = '';
		htmlStr += '<input type="hidden" name="searchOption" value="'+ memberNo +'">';

		formObj.innerHTML = formObj.innerHTML + htmlStr;

		//			alert(formObj.innerHTML);

		listFormObj.action = '/detail.do';
		listFormObj.submit();
	}
</script>
</head>

<body>
	<jsp:include page="../common/header.jsp" />
	
		<div class="member-list">
			<p>회원관리</p>
			<%-- 	<c:if test="${!empty memberList}"> --%>
			<div class="list-table">
				<table>
					<tr class="list-title">
						<th style="width: 100px;">번호</th>
						<th style="width: 150px;">이름</th>
						<th style="width: 400px;">이메일</th>
						<th style="width: 200px;">가입일</th>
					</tr>

					<c:forEach var="memberDto" items="${memberList}">
						<tr class="list-common">
							<td style="text-align: center;">${memberDto.memberNo}</td>
							<td style="text-align: center;"><a
								href='/nullProject/admin/memberDetail.do?memberNo=${memberDto.memberNo}&
						curPage=${pagingMap.paging.curPage}&'>${memberDto.memberName}
							</a></td>
							<td>${memberDto.memberEmail}</td>
							<td style="text-align: center;"><fmt:formatDate value="${memberDto.memberCreateDate}"
									pattern="yyyy-MM-dd  hh:mm hh:mm:ss" /></td>

						</tr>
					</c:forEach>

				</table>
				<div class="list-pagging">

					<jsp:include page="/WEB-INF/views/common/Paging.jsp">
						<jsp:param value="${pagingMap}" name="pagingMap" />
					</jsp:include>
					<input type="hidden" id="curPage" name="curPage" value="${pagingMap.paging.curPage}">
				</div>
				<div class="list-search">
					<form id="pagingForm" action="./list.do" method="post">
						<select name="searchOption">
							<c:choose>
								<c:when test="${searchMap.searchOption == 'MEMBER_NAME'}">
									<option value="MEMBER_NAME" selected="selected">회원이름</option>
									<option value="MEMBER_EMAIL">이메일</option>
									<option value="all" >회원이름+이메일</option>
								</c:when>
								<c:when test="${searchMap.searchOption == 'MEMBER_EMAIL'}">
									<option value="MEMBER_NAME">회원이름</option>
									<option value="MEMBER_EMAIL" selected="selected">이메일</option>
									<option value="all" >회원이름+이메일</option>
								</c:when>
								<c:when test="${searchMap.searchOption == 'all'}">
									<option value="MEMBER_NAME">회원이름</option>
									<option value="MEMBER_EMAIL">이메일</option>
									<option value="all" selected="selected">회원이름+이메일</option>
								</c:when>
							</c:choose>
						</select> 
						
						<input class="list-input" type="text" name="keyword" value="${searchMap.keyword}" placeholder="이름 or 이메일 검색">
						<input class="list-submit" type="submit" value="검색">
					</form>
				</div>
			</div>
			<jsp:include page="../common/footer.jsp" />

</body>
</html>