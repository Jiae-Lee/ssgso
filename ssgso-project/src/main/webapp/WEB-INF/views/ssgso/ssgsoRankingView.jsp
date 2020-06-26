<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String contextPath = request.getContextPath();
%>
<html>
  <head>
    <title>숙소 목록</title>
    <meta charset="utf-8">
    <meta name="숙소" content="숙소목록입니다">
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

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../resources/images/js2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            <div class="row justify-content-center">
              <div class="col-md-8 text-center">
                <h1>숙소</h1>
                <p class="mb-0">숙소리스트 확인해라ㅡ아아ㅏㅏ라</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>  
        
    <div class="site-section">
    <form action="<%=contextPath%>/ssgso/reservation">
         <input type="hidden" name="ac_no" value="${AccomodationDto.ac_no}">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <img src="${AccomodationDto.ac_img}" alt="숙소사진" class="img-fluid rounded">
          </div>
          <div class="col-md-5 ml-auto">
            <h2 class="text-primary">${AccomodationDto.name}</h2>
            <h5>&nbsp; 정보</h5>
            <p>${AccomodationDto.info}</p>
            <p class="mb-4">
            	두번째문단 더 넣을 정보
            </p>

            <ul class="ul-check list-unstyled success">
              <li>가격 : ${AccomodationDto.ac_price}</li>
              <li>주소 : ${AccomodationDto.address}</li>
            </ul>
          </div>
        </div>
        
        <div style="float:right;">
			<input type="button" value="예약하기" onClick="window.open('../ssgso/reservation')" class="btn btn-primary py-2 px-4 text-white btn-md font-weight-bold">
		</div>
      </div>
      </form>
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