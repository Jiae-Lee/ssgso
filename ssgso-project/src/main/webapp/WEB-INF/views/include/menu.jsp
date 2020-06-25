<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   String contextPath = request.getContextPath();
%>

<div class="container">
	<div class="row align-items-center">
		<div class="col-11 col-xl-2">
			<h1 class="mb-0 site-logo">
				<a href="<%=contextPath%>/index" class="text-black h2 mb-0">SSGSO</a>
			</h1>
		</div>
		<!-- 우측 상단 네비게이션 -->
		<div class="col-12 col-md-10 d-none d-xl-block">
			<nav class="site-navigation position-relative text-right" role="navigation">
				<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
					<li class="active"><a href="<%=contextPath%>/index"><span>홈</span></a></li>
					<li class="has-children"><a href="<%=contextPath%>/ssgso/ssgsoRanking"><span>숙소</span></a>
						<ul class="dropdown">
							<li><a href="<%=contextPath%>/ssgso/ssgsoRanking">숙소목록</a></li>
							<li><a href="<%=contextPath%>/ssgso/ssgsoThemeRecommend">추천테마</a></li>
						</ul>
					</li>
					<li class="has-children"><a href="<%=contextPath%>/board/boardFree"><span>커뮤니티</span></a>
						<ul class="dropdown">
							<li><a href="<%=contextPath%>/board/boardFree">자유게시판</a></li>
							<li><a href="<%=contextPath%>/board/boardEvent">이벤트게시판</a></li>
						</ul>
					</li>
					<li><a href="<%=contextPath%>/service/serviceNotice"><span>About</span></a></li>
					<c:choose>
						<c:when test="${sessionScope.memberId == null}">
							<li><a href="<%=contextPath%>/login/loginForm"><span>Login</span></a></li>
						</c:when>
						<c:otherwise>
							<li class="has-children"><a href="<%=contextPath%>/mypage/myInfo"><span>${sessionScope.memberName}(${sessionScope.memberId})님</span></a>
								<ul class="dropdown">
									<li><a href="<%=contextPath%>/mypage/myInfo">Mypage</a></li>
									<li><a href="<%=contextPath%>/login/logout.do">Logout</a></li>
								</ul>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			

		</div>
		<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
			style="position: relative; top: 3px;">
			<a href="#" class="site-menu-toggle js-menu-toggle text-black">
				<span class="icon-menu h3"></span>
			</a>
		</div>
	</div>
</div>