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
<title>자유게시판</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	<style>
	
	input[type=submit]{
	border: 1px solid#ccc;
         border-radius: 10px;
         padding: 8px 16px;
         background-color:#DA9ADA;
         font-family:AppleSDGothicNeoR00,"함초롬바탕",D2Coding;
         font-size: 10px;
	}
	
	
	

#content { 
   width: 1000px; 
   min-height: 600px; 
   border: 1px solid #dedcee; 
   border-radius: 5px; 
   margin: 10px auto; 
   padding: 10px; }


	
	
	</style>

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

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../resources/images/js4.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <div class="row justify-content-center">
              <div class="col-md-8 text-center">
                <h1 data-aos="fade-up">커뮤니티</h1>
                <p class="mb-0" data-aos="fade-up" data-aos-delay="100">자유게시판!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    	<div id="content">

			자유게시판>글보기>

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="u">
				<%--BOARD_NO은 매퍼에 있는거 --%>
			
						<td><h1><input type="text" name="title"style="background-color:transparent;border:0 solid black;text-align:left; " 
				  value='${BoardDto.title}'></h1></td>
						
						<hr>
					
						<td><textarea rows="10" cols="110" name="content">${BoardDto.content}</textarea></td><br>
					
				<input type="submit" value="수정하기">
			</form>

			<form action="<%=contextPath%>/updateBoardFree" method="post">
				<input type="hidden" name="BOARD_NO" value='${BoardDto.board_no }'>
				<input type="hidden" name="flag" value="d">
				<input type="submit" value="삭제">
			</form>
			<br>
			<br>

		<%@ include file="/WEB-INF/views/board/commentWrite.jsp" %>   
		<br>    
		<%@ include file="/WEB-INF/views/board/comment.jsp" %>
		

		</div>
    
    
	<!-- footer -->
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