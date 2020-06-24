<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String contextPath = request.getContextPath();
%>

<meta charset="UTF-8">
<div>
 	<c:choose>
		<c:when test="${sessionScope.memberId == null}">
			<a href="<%=contextPath%>/login/loginForm">로그인</a> | 
         	<a href="<%=contextPath%>/sitemap">사이트맵</a>
		</c:when>
		<c:otherwise>
			${sessionScope.memberName}(${sessionScope.memberId})님 |
			<a href="<%=contextPath%>/mypage/myInfo">마이페이지</a> |
			<a href="<%=contextPath%>/login/logout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
</div>