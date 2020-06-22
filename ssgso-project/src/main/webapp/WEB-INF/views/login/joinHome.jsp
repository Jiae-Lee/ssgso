<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<%-- 일반 회원가입, 파트너 회원가입 구분 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}

table {
	margin: auto;
}
</style>
</head>
<body>
	<br>
	<br>
	<form action="<%=contextPath%>/login/joinCustomer" method="get">
		<input type="submit" value="일반 회원가입">
	</form>
	<br>
	<form action="<%=contextPath%>/login/joinPartner" method="get">
		<input type="submit" value="파트너 회원가입">
	</form>
</body>
</html>