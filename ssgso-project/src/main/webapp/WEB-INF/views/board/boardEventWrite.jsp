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

<h1>이벤트글쓰기페이지</h1>

<form action="<%=contextPath%>/board/boardEvent" method="post">
		<input type="submit" value="작성완료(게시글목록으로)">
	</form>

	<form action="<%=contextPath%>/board/boardEvent" method="post">
		<input type="submit" value="작성취소(게시글목록으로)">
	</form>



</body>
</html>