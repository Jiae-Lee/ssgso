<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
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

	SSKSO 회원가입이 완료되었습니다.
	<input type="button" value="로그인 하러 가기" onclick="window.location.href='<%=contextPath%>/login/loginForm'">

</body>
</html>