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
table.list {
	width: 100%;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	margin: 10px 0;
}

.list th {
	text-align: center;
	background: #DA9ADA;
	color: #fff;
}

.list_no {
	width: 10%;
	text-align: center;
	
}

.list_title {
	width: 60%;
	padding-left: 10px;
	color: #000;
}

.list_date {
	width: 20%;
	text-align: center;
}

.list_count {
	width: 10%;
	text-align: center;
}

.writebutton {
	float: right;
}
</style>
<script>
	$(document).ready(function() {
		$("tr:even").css("background-color", "#dedcee");
		$("tr:odd").css("background-color", "white");
		$("tr:first").css("background-color", "#6a60a9");
		$("tr:first").css("color", "white");
	});
</script>

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

	         
			<table class="list">
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
					<tr>
						<th class="list_no">번호</th>
						<th class="list_title">제목</th>
						<th class="list_date">등록일시</th>
						<th class="list_count">조회수</th>
					</tr>
					</c:when>
				</c:choose>   
					<c:forEach items="${list}" var="dto">
					<tr>
						<td class="list_no">${dto.board_no}</td>
						<td class="list_title"><a href="<%=contextPath%>/board/selectBoardFree?board_no=${dto.board_no}">${dto.title}</a></td>
						<td class="list_date">${dto.create_data}</td>
						<td class="list_count">${view_cnt}</td>
					</tr>
				</c:forEach>
			</table>
			
			<form action="<%=contextPath%>/board/boardFreeWrite" method="post" class="writebutton">
				<input type="submit" value="글쓰기">
			</form>
		
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