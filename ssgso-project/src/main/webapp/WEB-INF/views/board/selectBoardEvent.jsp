<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
   String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 게시판</title>
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
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

section { width:100%; margin: 10px 0 0 0; padding: 0;}
#content { 
	width: 1000px; 
	min-height: 600px; 
	border: 1px solid #dedcee; 
	border-radius: 5px; 
	margin: 10px auto; 
	padding: 10px; }
	
table.list {
	width: 95%;
	margin: 10px auto;
    border-collapse: collapse;
    border: 1px solid #dedcee;
    text-align: left;
    line-height: 1.6;
	}
table th td{ border: 1px solid #dedcee;}
	
.list th{ width: 20%; text-align : center; background: #dedcee;}
.list td{ width: 80%; height: 22px;}

.updatearea input{
	width: 98%; 
	margin: 2px 10px 0 10px;}

.updatearea textarea{
	width: 98%; 
	margin: 2px 10px 0 10px;}
#updateButton { width: 100px; float: right; border: none; height: 30px; background: #6a60a9; color: #fff; margin: 10px 20px 0 0;}
#deleteButton { width: 100px; float: right; border: none; height: 30px; margin: 10px 5px 0 5px;}
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

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../resources/images/js3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <div class="row justify-content-center">
              <div class="col-md-8 text-center">
                <h1 data-aos="fade-up">이벤트 게시판</h1>
                <p class="mb-0" data-aos="fade-up" data-aos-delay="100">SSGSO의 이벤트를 확인하세요 :)</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <section>
		<div id="content">
			
			<form action="<%=contextPath%>/updateBoardEvent" method="post">
				<input type="hidden" name="EBOARD_NO" value='${EventBoardDto.eboard_no}'>
				<input type="hidden" name="flag" value="u">
				<%--BOARD_NO은 매퍼에 있는거 --%>
				<table class="list">
					<tr>
						<th>제목</th>
						<td class="updatearea"><input type="text" name="etitle" value='${EventBoardDto.etitle}'></td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="updatearea"><textarea rows="8" cols="60" name="econtent">${EventBoardDto.econtent}</textarea></td>
					</tr>
				</table>
				<input type="submit" value="수정" id="updateButton">
			</form>

			<form action="<%=contextPath%>/updateBoardEvent" method="post">
				<input type="hidden" name="EBOARD_NO" value='${EventBoardDto.eboard_no }'>
				<input type="hidden" name="flag" value="d">
				<input type="submit" value="삭제" id="deleteButton">
			</form>
			
		</div>
	</section>

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