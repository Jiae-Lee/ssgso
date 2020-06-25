<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>subindex</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>"
	type="text/css" />
</head>
<body>
	<header>
		<div class="logo">
			<a href="<%=contextPath%>/index"><img
				src="<c:url value="/images/logo2.png"/>"></a>
		</div>

		<div id="login">
			<jsp:include page="../include/login.jsp" />
		</div>

		<nav>
			<jsp:include page="../include/menu.jsp" />
		</nav>
	</header>
	<style>
	
	input[type=submit]{
	border: 1px solid#ccc;
         border-radius: 10px;
         padding: 8px 16px;
         background-color:#ffccff;
         font-family:AppleSDGothicNeoR00,"함초롬바탕",D2Coding;
         font-size: 10px;
	</style>
	<section>
		<div id="content">

			<h2>자유게시판>글보기></h2>

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="u">
				<%--BOARD_NO은 매퍼에 있는거 --%>
			
						<td><input type="text" name="title"style="background-color:transparent;border:0 solid black;text-align:left;"
						 value='${BoardDto.title}'></td>
						<br>
						<hr>
						<br>
						

						<td><textarea rows="25" cols="100" name="content">${BoardDto.content}</textarea></td><br>
					
				<input type="submit" value="수정하기">
			</form>

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="d">
				<input type="submit" value="삭제">
			</form>


       
<%@ include file="/WEB-INF/views/board/commentWrite.jsp" %>       
<%@ include file="/WEB-INF/views/board/comment.jsp" %>


		</div>
	</section>

	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>
