<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판목록</title>
<style type="text/css">
 
	#listView {
		display: table;
		overflow: hidden;
		margin-left: auto;
		margin-right: auto;
		width : 1000px;
	}

	table{
		 border: 1px solid black;
		 border-collapse: collapse;
	}
	
	tr, td{
		border-bottom : 1px solid black;
 		padding: 15px;
 		text-align: center;
	}
	
	table#listTable th{
		font-size: 17px;
		font-weight: bold;
		background-color: #DDDDDD;
		text-align: center;
		height: 45px;
	}
	
	#writeBtnDiv{
		margin-top: 30px;
	}
	
	#writeBtn{
		background-color: #0099CC;
		width:100px;
		height:40px;
		font-weight: bold;
		font-size: 18px;
		color: white;
		border: none;
		border-radius: 4px;
		float: right;
	}
	
	#keywordDiv{
		 float: left;
		 margin-left: 10px;
	}
	
	#keywordId{
		 width:250px;
		 height:40px;
	}
	
	#searchBtnDiv{
		float: left;
		margin-left: 10px;
	}
	
	#searchBtnId{
		 background-color: #0099CC;
		 width:100px;
		 height:40px;
		 font-weight: bold;
		 font-size: 18px;
		 color: white;
		 border: none;
		 border-radius: 4px;
	}
	
	#pagingDiv{
		 margin-top: 30px;
		 margin-left: 125px;
	}
	
	#searchOptionDiv{
		 margin-left: 250px;
	}
	
	#searchOptionDivInDiv{
		 float: left;
	}
	
	table tr:nth-child(even)  {
		background-color: #f8f8f8; 
	}
    
    table tr:nth-child(odd)   {
    	background-color: #f4f4f4; 
    }
    
    #listRowTr{
   		cursor:hand;
    }
    
    #searchOption{
    	height: 40px;
    }
    select {
	height: 40px;
	border-radius: 3px;
}
    #keywordId{
    width: 300px;
	height: 40px;
	border-radius: 3px;
    }
    #searchBtnId{
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
<script>

	function pageMoveWriteFnc(boardWriter) {
	
		location.href = './bbsWrite.do';
	}

	function listRowFnc(boardNo){
		
		location.href = './bbsDetail.do?boardNo=' + boardNo +
						'&curPage=${pagingMap.paging.curPage}' +
						'&searchOption=${searchMap.searchOption}'+
						'&keyword=${searchMap.keyword}';
	}
	
	function MouseEvent(trObj){
		var pos = 0;
		if(pos)
			pos.style.background = "#FFFFFF";
			trObj.style.background = "#CEEEFF";
			pos = trObj;
	}

</script>
</head>
<body>

<jsp:include page="../common/header.jsp" />

<br>

<div id="listView" >
	<div>
		<h1 style="text-align: center;">여행 후기 게시판</h1>
	</div>
		
	<br>
	
	<div>
		<table id="listTable">
	  		<tr>
			  	<th style="width: 80px; ">번호</th>
			   	<th style="width: 720px;">제목</th>
			   	<th style="width: 100px;">작성자</th>
			   	<th style="width: 100px;">작성일</th>
			</tr>
		<c:forEach var="bbsDto" items="${bbsList}">
			<tr id="listRowTr" onclick="listRowFnc(${bbsDto.boardNo}); MouseEvent(this);">
				<td>${bbsDto.boardNo}</td>
				<td>${bbsDto.boardTitle}</td>
				<td>${bbsDto.memberName}</td>
				<td>
					<fmt:formatDate value="${bbsDto.boardCreDate}" pattern="yyyy-MM-dd hh:mm:ss"/>
				</td>
			</tr>
		</c:forEach>	
		</table>
	 </div>	
	 
	<br>
	
	<div id="writeBtnDiv">
		<input type='button' id="writeBtn" value="글쓰기" onclick="pageMoveWriteFnc(${bbsDto.boardWriter});">
	 </div>
	
	 <div id="pagingDiv">
		 <jsp:include page="/WEB-INF/views/common/Paging.jsp">
		 	 <jsp:param value="${pagingMap}" name="pagingMap" />
		 </jsp:include>
		 
		 <input type="hidden" id="curPage" name='curPage' value="${pagingMap.paging.curPage}">
	</div>
	
	<br>
	
	<div id="searchOptionDiv">
		<form id ="pagingForm" action="./bbsList.do" method="post">
			<div id="searchOptionDivInDiv">
				<select name="searchOption" id="searchOption">
					<c:choose>
						<c:when test="${searchMap.searchOption == 'MEMBER_NAME'}">
							<option value="MEMBER_NAME" selected="selected">작성자</option>
							<option value="BOARD_TITLE">제목</option>
							<option value="all">작성자+제목</option>
						</c:when>
						<c:when test="${searchMap.searchOption == 'BOARD_TITLE'}">
							<option value="MEMBER_NAME">작성자</option>
							<option value="BOARD_TITLE" selected="selected">제목</option>
							<option value="all">작성자+제목</option>
						</c:when>
						<c:when test="${searchMap.searchOption == 'all'}">
							<option value="MEMBER_NAME">작성자</option>
							<option value="BOARD_TITLE">제목</option>
							<option value="all" selected="selected">작성자+제목</option>
						</c:when>
					</c:choose>
				</select>
			</div>
			
		<div id="keywordDiv">
			<input id="keywordId" type="text" name="keyword" value="${searchMap.keyword}" placeholder="검색">
		</div>
			
		<div id="searchBtnDiv">		
			<input id="searchBtnId" type="submit" value="검색">
		</div>
		</form>
	</div>
</div>

<br>

<jsp:include page="../common/footer.jsp" />


</body> 
</html>