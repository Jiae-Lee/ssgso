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
<title>SSGSO - 사이트맵</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="images/favicon.ico"/>">
<link rel="stylesheet" href="<c:url value="css/sub.css"/>" type="text/css"/>
<style>
.sitelistwrap { width: 33%; float: left; border: 1px solid purple; background: lightgray;
	list-style-type : none;}

</style>
</head>
<body>
	<header>
		<div id="login">
			<jsp:include page="include/login.jsp" />
		</div>
		
		<div class="logo">
		 	<a href="<%=contextPath%>/index"><img src="<c:url value="images/logo2.png"/>"></a>
		</div>
		
		<nav>
			<jsp:include page="include/menu.jsp" />
		</nav>
	</header>
	<section>
		<div id="content">
		 
			<div class="sitelistwrap">
			<h2>숙소</h2>
			<ul>
				<li><a href="<%=contextPath%>/ssgso/ssgsoRanking">상위랭킹목록</a></li>
				<li><a href="<%=contextPath%>/ssgso/ssgsoThemeRecommend">추천테마</a></li>
			</ul>
			</div>
			
			<div class="sitelistwrap">
			<h2>커뮤니티</h2>
				<ul>
					<li><a href="<%=contextPath%>/board/boardFree">자유게시판</a></li>
					<li><a href="<%=contextPath%>/board/boardEvent">이벤트게시판</a></li>
				</ul>
			</div>
			
			<div class="sitelistwrap">	
			<h2>고객센터</h2>
				<ul>
					<li><a href="<%=contextPath%>/service/serviceNotice">공지사항</a></li>
					<li><a href="<%=contextPath%>/service/servicePolicy">약관정책</a></li>
				</ul>
			</div>
			
		</div>
	</section>

	<footer>
		<jsp:include page="include/footer.jsp" />
	</footer>

</body>
</html>