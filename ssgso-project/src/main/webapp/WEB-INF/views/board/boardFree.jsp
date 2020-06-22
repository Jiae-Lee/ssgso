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

<h1>이벤트게시판</h1>
<br>
<hr>
목록1
<hr>
목록1



	<form action="<%=contextPath%>/board/boardFreeWrite" method="post">
		<input type="submit" value="글쓰기">
	</form>

</body>
</html>