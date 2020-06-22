<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
보드상세조회
${BoardDto.board_no}, ${BoardDto.title},${BoardDto.content}
<form action="<%=contextPath%>/updateBoardFree"method="post">
 	<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"value='${BoardDto.title}'></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text"name="content"value='${BoardDto.content}'></td>
			</tr>
		</table>
<input type="submit"value="수정하기">
</form>
</body>
</html>