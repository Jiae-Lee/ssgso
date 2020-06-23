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
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		if ('${msgPw}' != "") {
			alert('${msgPw}');
		}
	})
</script>
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
	<form action="<%=contextPath%>/sendPw.do" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="member_id" required>
				<td rowspan="2"><input type="submit" value="메일 발송"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" required></td>
			</tr>
		</table>
	</form>
	<a href="<%=contextPath%>/join/joinHome">회원가입ㅣ</a>
	<a href="<%=contextPath%>/index">[인덱스]ㅣ</a>
	<a href="<%=contextPath%>/login/loginForm">로그인</a>
</body>
</html>