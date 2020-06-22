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
	<form action="<%=contextPath%>/login/joinSuccess" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="20" maxlength="10"
					required></td>

			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="20" maxlength="10"
					required></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password" size="20"
					maxlength="15" required></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" name="check" size="20"
					maxlength="15" required></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="20" maxlength="15"
					required></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="M" checked>남자
					<input type="radio" name="gender" value="W">여자</td>
			</tr>
			<tr>
				<td>사업자번호</td>
				<td><input type="text" name="text" size="20" maxlength="15"
					required></td>
			</tr>
		</table>
		<input type="submit" value="회원가입"><input type="button"
			value="취소">
	</form>
</body>
</html>