<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<style>
#content { padding: 20px; text-align : left;}

</style>
</head>
<body>
	<header>
		<div class="logo">
			<a href="<%=contextPath%>/index"><img src="<c:url value="/images/logo2.png"/>"></a>
		</div>
		
		<div id="login">
			<jsp:include page="../include/login.jsp" />
		</div>
		
		<nav>
			<jsp:include page="../include/menu.jsp" />
		</nav>
	</header>
	<section>
		<div id="content">
		   
			<h1>* 공지사항</h1>
			<br>
			안녕하세요 2조에서 만든 <b>SSGSO</b>입니다.<br>
			공지사항은 게시판으로 만들까 하다 게시판 형식은 커뮤니티에서 많이 적용해봐서 그냥 텍스트로 넣기로 했습니다.<br>
			팀 분위기도 너무 좋고 작업도 재밌는데 집에 가고싶네요.<br>
			보내주세요...<br>
			여러분... 집에 가요 우리...<br>
			제발...<br>
					
					
		</div>
	</section>
	
	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer> 
</body>
</html>