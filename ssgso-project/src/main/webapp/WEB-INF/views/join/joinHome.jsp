<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String contextPath = request.getContextPath();
%>
<html>
<head>
	    <title>SSGSO</title>
	    <meta charset="utf-8">
	    <meta name="회원가입" content="회원가입 페이지 입니다">
	    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rangeslider.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar py-2 bg-white" role="banner">
			<jsp:include page="../include/menu.jsp" />
    </header>


    <div class="site-section bg-light">
      <div class="container">
       <div class="row align-items-center">
         <div class="col-md-7">
			<form action="<%=contextPath%>/join/joinCustomer" method="get">
				<!-- <input type="submit" value="일반 회원가입"> -->
				<input type="image" src="../resources/images/join1.png" name="submit" value="submit">
			</form>
         </div>
         <div class="col-md-5 ml-auto">
			<form action="<%=contextPath%>/join/joinPartner" method="get">
				<!-- <input type="submit" value="파트너 회원가입"> -->
				<input type="image" src="../resources/images/join2.png" name="submit" value="submit">
			</form>
         </div>
       </div>
      </div>
    </div>
    
    



    <footer class="site-footer">
		<jsp:include page="../include/footer.jsp" />
    </footer>
    
  </div>

	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/bootstrap-datepicker.min.js"/>"></script>
	<script src="<c:url value="/resources/js/aos.js"/>"></script>
	<script src="<c:url value="/resources/js/rangeslider.min.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
    
  </body>
</html>