<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 등록 페이지</title>
<style>
	*{
		text-align: center;
	}
	#header { width:100%; }

	#section { width:100%; }
	#footer { width:100%; }
</style>
</head>
<body>
	숙소 등록 화면입니다.
	<div id="header">
		<div id="login">
	     	<a href="<%=contextPath%>/login/loginform"/>로그인</a> | <a href="<%=contextPath%>/sitemap"/>사이트맵</a>
	     </div>
		<div class="search">검색</div>
	 </div><!-- end : header -->
	 
	   <br>
	 <div id="section">
	   
	 </div><!-- end : section -->
	   <br>
	 <div id="footer">
	   	footer
	 </div><!-- end : footer -->
</body>
</html>