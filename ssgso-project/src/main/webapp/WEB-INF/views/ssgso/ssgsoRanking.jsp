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
                <p class="mb-0">숙소리스트를 확인해보세요!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>  
    
   <!-- 숙소리스트 -->
    <div class="site-section">
      <div class="container">
        <div class="row">
         <!-- 숙소 목록 -->
          <div class="col-lg-8">
            
	         <c:choose>
	            <c:when test="${fn:length(list)>0}">
	               <c:forEach items="${list}" var="dto">
	                     <div class="d-block d-md-flex listing-horizontal">
	                       <a href="<%=contextPath%>/ssgso/ssgsoRankingView?ac_no=${dto.ac_no}" class="img d-block" style="background-image: url('${dto.ac_img}')">
	                         <span class="category">${dto.category}</span>
	                       </a>
	                       <div class="lh-content">
	                         <a href="#" class="bookmark"><span class="icon-heart"></span></a>
	                         <h3><a href="<%=contextPath%>/ssgso/ssgsoRankingView?ac_no=${dto.ac_no}">${dto.name}</a></h3>
	                         <p>${dto.address}</p>
	                         <p>
	                           <span class="icon-star text-warning"></span>
	                           <span class="icon-star text-warning"></span>
	                           <span class="icon-star text-warning"></span>
	                           <span class="icon-star text-warning"></span>
	                           <span class="icon-star text-warning"></span>
	                           <span>(42 Reviews)</span>
	                         </p>          
	                       </div>
	                     </div>
	               </c:forEach>
	            </c:when>   
	         </c:choose>
         
          </div><!-- end : 숙소리스트 좌측 숙소내용 -->
          <!-- 숙소리스트 우측 검색필터 -->
          <div class="col-lg-3 ml-auto">
            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Filters</h3>
              <form action="#" method="post">
                <div class="form-group">
                  <input type="text" placeholder="What are you looking for?" class="form-control">
                </div>
                <div class="form-group">
                  <div class="select-wrap">
                      <span class="icon"><span class="icon-keyboard_arrow_down"></span></span>
                      <select class="form-control" name="" id="">
                        <option value="">All Categories</option>
                        <option value="">Appartment</option>
                        <option value="">Restaurant</option>
                        <option value="">Eat &amp; Drink</option>
                        <option value="">Events</option>
                        <option value="">Fitness</option>
                        <option value="">Others</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                  <!-- select-wrap, .wrap-icon -->
                  <div class="wrap-icon">
                    <span class="icon icon-room"></span>
                    <input type="text" placeholder="Location" class="form-control">
                  </div>
                </div>
              </form>
            </div>
            
            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Radius around selected destination</p>
                </div>
                <div class="form-group">
                  <input type="range" min="0" max="100" value="20" data-rangeslider>
                </div>
              </form>
            </div>

            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Category 'Restaurant' is selected</p>
                  <p>More filters</p>
                </div>
                <div class="form-group">
                  <ul class="list-unstyled">
                    <li>
                      <label for="option1">
                        <input type="checkbox" id="option1">
                        Coffee
                      </label>
                    </li>
                    <li>
                      <label for="option2">
                        <input type="checkbox" id="option2">
                        Vegetarian
                      </label>
                    </li>
                    <li>
                      <label for="option3">
                        <input type="checkbox" id="option3">
                        Vegan Foods
                      </label>
                    </li>
                    <li>
                      <label for="option4">
                        <input type="checkbox" id="option4">
                        Sea Foods
                      </label>
                    </li>
                  </ul>
                </div>
              </form>
            </div>

          </div>

        </div>
      </div>
    </div><!-- end : 숙소리스트 -->

    <footer class="site-footer">
      <jsp:include page="../include/footer.jsp" />
    </footer>
  </div>


   <script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
   <script   src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
   <script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
   <script src="<c:url value="/resources/js/popper.min.js"/>"></script>
   <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
   <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
   <script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
   <script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
   <script   src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
   <script   src="<c:url value="/resources/js/bootstrap-datepicker.min.js"/>"></script>
   <script src="<c:url value="/resources/js/aos.js"/>"></script>
   <script src="<c:url value="/resources/js/rangeslider.min.js"/>"></script>
   <script src="<c:url value="/resources/js/main.js"/>"></script>
  </body>
</html>