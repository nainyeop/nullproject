

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
nav>ul {
	background-color: #3C3C3C;
	display: table;
	overflow: hidden;
	padding: 0px;
	margin-left: auto;
	margin-right: auto;
}

nav>ul>li {
	float: left;
	list-style: none;
}

nav>ul>li>a {
	display: block;
	color: #FFFFFF;
	text-align: center;
	padding: 16px;
	text-decoration: none;
}

nav>ul>li>a:hover {
	color: #FFD9EC;
	background-color: #5D5D5D;
	font-weight: bold;
}

/* 평소 번호 배경색 */
.active {
	color: #FFD9EC;
	background-color: #3C3C3C;
	font-weight: bold;
}
</style>
<script type="text/javascript">
// 	function goPage(pageNumber){
// 		var curPageObj = document.getElementById('curPage');
	
// 		curPageObj.value = pageNumber;
// // 		alert(curPageObj.value);
// 		document.getElementById('pagingForm').submit();
		
// 	}
	window.onload = function(){
		var curPageDoc = document.getElementById('curPage');
	
		var pageNationObj = document.getElementById('pageNation');
		
		var liObjArr = pageNationObj.getElementsByTagName('li');

	
		liObjArr[curPageDoc.value].style.backgroundColor = '#A6A6A6';
		liObjArr[curPageDoc.value].style.color = 'black';
	}
	
	function goPage(pageNumber){
		var curPageObj = $('#curPage');
	
		curPageObj.val(pageNumber);
// 		alert(curPageObj.value());
// 		document.getElementById('pagingForm').submit();
	var formObj = document.getElementById('pagingForm');
// 		다음 위치
		var htmlStr = '';
		
		htmlStr +='<input type="hidden" name="curPage"';
		htmlStr +='value="' + curPageObj.val() +'">';
		
		$("#pagingForm").html($("#pagingForm").html() + htmlStr);
		
		$("#pagingForm").submit();
	}
	
	$(document).ready(function(){
		var curPageDoc = $('#curPage'); 
		
// 		var id = '#pageButton' + curPageDoc.val();
		
// 		$(id).addClass('active');
	
	
// 	window.onload = function(){
// 		var curPageDoc = $('#curPage');
	
// 		var pageNationObj = $('#pageNation');
		
// 		var liObjArr = pageNationObj.getElementsByTagName('li');

// 		liObjArr[curPageDoc.value].style.backgroundColor = '#5D5D5D';
// 		liObjArr[curPageDoc.value].style.color = '';



		var index = curPageDoc.val();
		
		
		index = ((index - 1) % 10) +1;
		$('#pageNation').find('li').eq(index).addClass('active');
	});
</script>

<nav id='pageNation'>
	<ul>
		<li>
			<a href="#" onclick="goPage(${pagingMap.paging.prevPage});"><span>이전</span></a>
		</li>

		<c:forEach var="num" begin="${pagingMap.paging.blockBegin}"
			end="${pagingMap.paging.blockEnd}">
			<li>
				<a href="#" onclick="goPage(${num})"><c:out value="${num}"/></a>
			</li>
		</c:forEach>
		
		<li>
			<a href="#" onclick="goPage(${pagingMap.paging.nextPage});"><span>다음</span></a>
		</li>
	</ul>
</nav>
