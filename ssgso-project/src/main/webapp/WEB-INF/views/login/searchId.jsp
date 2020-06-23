<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<%-- 아이디 찾기 화면 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		if('${msgId}' != "") {
			alert('${msgId}');
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
	아이디 찾기
	<form action="<%=contextPath%>/searchId.do" method="POST">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" required>
				<td rowspan="2"><input type="submit" value="확인"></td>
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