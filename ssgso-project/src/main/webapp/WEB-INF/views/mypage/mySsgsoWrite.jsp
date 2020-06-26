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
<title>숙소 등록</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css" type="text/css">
<script>
	function goPopup() {
		// 주소 검색 팝업 페이지 호출(jusoPopup.jsp)에서 실제 주소 검색 URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do) 호출
		var pop = window.open("../popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(roadFullAddr) {
		// 팝업페이지에서 입력한 주소를 받아 정보 등록
		document.form.roadFullAddr.value = roadFullAddr;
	}
</script>
<style>
.rightheader {
	width: 95%; 
	height: 50px; 
	line-height: 50px;
	font-size: 20pt; 
	text-align: center;
	background: #6a60a9; 
	color: #fff;
	margin: 0 auto;
	vertical-align: middle;
	}
	
table.list {
	width: 95%;
	margin: 10px auto;
    border-collapse: collapse;
    text-align: left;
    line-height: 1.6;
	}
.list th{ width: 20%; text-align : center; background: #dedcee;}
.list td{ width: 80%; height: 22px;}
.list td input {
	width: 98%; 
	margin: 0 10px;
    border-color: #dedcee;
    border-style: solid;}

.list td select {
	width: 98%; 
	margin: 3px 10px 0 10px;
    border-color: #dedcee;
    border-style: solid;}
    
.list #addbutton { width: 100px; float: right; border: none; height: 30px; background: #6a60a9; color: #fff; margin: 10px 3px 0 0;}
.list #resetbutton { width: 100px; float: right; border: none; height: 30px; margin-top: 10px;}
.searchButton {position: relative; top: -215px; magin: 0; padding: 0; left: 640px; width: 100px; height: 30px; border: none;}

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
    
	<div id="content">
		<div class="secLeft">
			<jsp:include page="../include/myLeftmenu.jsp" />
		</div>
		
		
		<div class="secRight">
		
			<div class="rightheader">숙소 등록</div>
			<form name="form" action="<%=contextPath%>/mypage/mySsgsoCreate" method="post">
				<table class="list">
					<tr>
						<th>숙소명</th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input type="text" name="ac_price"></td>
					</tr>
					<tr>
						<th>계좌 번호</th>
						<td><input type="text" name="ac_account"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" id="roadFullAddr" style="width:80%;" name="roadFullAddr" placeholder="주소검색을 눌러 주소를 입력해주세요" required readonly />
						</td>
					</tr>
					<tr>
						<th>사진 등록</th>
						<td><input type="text" name="ac_img"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="ac_phone"></td>
					</tr>
					<tr>
						<th>추가 정보</th>
						<td><input type="text" name="info"></td>
					</tr>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="category">
					            <c:forEach var="cat" items="${list}">
					                <option value="${cat.cat_val}">${cat.cat_val}</option>
					            </c:forEach>
					        </select>
						</td>
					</tr>
					
					
					<tr>
						<td colspan="2">
							<input type="submit" value="등록" id="addbutton">
							<input type="reset" value="초기화" id="resetbutton">
						</td>
					</tr>
				</table>
			</form>
			<button class="searchButton" onclick="goPopup()">주소 검색</button>
			
		</div>
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