<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 숙소목록</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css" />
<style>
	#accwrap { width : 95%; height : 300px; margin : 0 auto; padding : 0; }
	#accimg { width: 40%; height : 300px; float : left; border: 1px solid yellow;}
		.accname_text {font-size : 2em;}
	#infowrap { width : 60%; height : 300px; float : left;border: 1px solid green;}
</style>
</head>
<body>
	<header>
		<div class="logo">
			<a href="<%=contextPath%>/index"><img
				src="<c:url value="/images/logo2.png"/>"></a>
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
			<div class="secLeft">
				<jsp:include page="../include/myLeftmenu.jsp" />
			</div>

			<div class="secRight">
				<div id="accwrap">
					<div id="accimg">
						이미지 불러올 부분
						${AccomodationDto.ac_img}
					</div>
					<div id="infowrap">
						<div class="accname">
							<div class="accname_text">${AccomodationDto.name}</div>
						</div>

						<div class="accprice">
							<h3>가격</h3>
						</div>

						<div class="accinfo">
							<h3>공용시설</h3>
							<div class="accprice_text">${AccomodationDto.info}</div>
						</div>

						<div class="accaddress">
							<h3>주소</h3>
							<div class="accprice_address">${AccomodationDto.address}</div>
						</div>
					</div>
				</div><!-- end : accWrap -->
				<div id="roomwrap">방정보가 들어갈 부분입니다</div>

			</div><!-- end: secRight -->
		</div><!-- end: content -->
	</section>

	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>