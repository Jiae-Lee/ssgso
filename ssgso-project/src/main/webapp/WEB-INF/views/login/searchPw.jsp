<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<%-- 비밀번호 찾기 화면 --%>
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
	비밀번호 찾기
	<form action="<%=contextPath%>/login/loginForm" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" required>
				<td rowspan="2"><input type="submit" value="확인"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" required></td>
			</tr>
		</table>
	</form>
</body>
</html>