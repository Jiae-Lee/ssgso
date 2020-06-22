<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 페이지.</title>
<style>
	*{
		text-align: center;
	}
	#header { width:100%; }

	#section { width:100%; }
	#footer { width:100%; }
	table{
		margin : auto;
	}
</style>
</head>
<body>
	회원 관리 화면입니다.
	<div id="header">
      <div id="login">
      <a href="<%=contextPath%>/login/loginform"/>로그인</a> | <a href="<%=contextPath%>/sitemap"/>사이트맵</a>
      </div>
      <div class="search">검색</div>
   </div><!-- end : header -->
   <br>
   <div id="section">
   
	<table border="1px">
	<tr>
	   <th>아이디</th>
	   <th>이름</th>
	   <th>연락처</th>
	   <th>이메일</th>  
	   <th>성별</th>   
	</tr>
	<tr>
	   <td>sbk121</td>
	   <td>신보경</td>
	   <td>010-8491-6633</td>
	   <td>sbk8689@gmail.com</td>
	   <td>여</td>
	</tr>
	</table>
	
	<form action="<%=contextPath%>/admin/adminUsermanage" method="post">
		<input type="text" placeholder="검색하세요">
		<input type="submit" value="검색">
	    <input type="submit" value="삭제">
	</form>
   </div><!-- end : section -->
   <br>
   <div id="footer">
   	footer
   </div><!-- end : header -->
</body>
</html>