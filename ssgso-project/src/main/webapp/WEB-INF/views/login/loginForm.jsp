<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmf" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- JSTL Function --%>
<%
	String contextPath = request.getContextPath();
%>
<%--로그인 폼 화면 --%>
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
	<form action="<%=contextPath%>/home" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="20" maxlength="10"
					required></td>
				<td rowspan="2"><input type="submit" value="로그인"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password" size="20"
					maxlength="15" required></td>
			</tr>
			<tr>
				<td colspan="2"><a href="<%=contextPath%>/login/searchId">아이디 찾기ㅣ</a>
					<a href="<%=contextPath%>/login/searchPw">비밀번호 찾기ㅣ</a> <a
					href="<%=contextPath%>/login/joinHome">회원가입</a>
			</tr>
		</table>
	</form>

</body>
</html>