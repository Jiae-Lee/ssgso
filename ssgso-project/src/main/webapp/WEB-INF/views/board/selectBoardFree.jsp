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
	<section>
		<div id="content">

			보드상세조회

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="u">
				<%--BOARD_NO은 매퍼에 있는거 --%>
				<table>

					<tr>
						<td>제목</td>
						<td><input type="text" name="title" value='${BoardDto.title}'></td>
					</tr>
					<tr>
						<td>내용</td>

						<td><textarea rows="8" cols="60" name="content">${BoardDto.content}</textarea></td>
					</tr>
				</table>
				<input type="submit" value="수정하기">
			</form>

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="d">
				<input type="submit" value="삭제">
			</form>


		</div>
	</section>

	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>
