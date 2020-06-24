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
<title>숙소 생성</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css"/>
</head>
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


<body>
	<header>
		<div class="logo">
		 	<a href="<%=contextPath%>/index"><img src="<c:url value="/images/logo2.png"/>"></a>
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
			
			<button onclick="goPopup()">주소 검색</button><br>
			
				<form name="form" action="<%=contextPath%>/mypage/mySsgsoCreate" method="post">
					<table style="text-align: center;">
						<tr>
							<td colspan="1">숙소 위치</td>
							<td><input type="text" style="width:500px;" id="roadFullAddr" name="roadFullAddr" placeholder="주소를 입력해 주세요" required="true" readonly="true" /></td>
						</tr>
						<tr>
							<td>숙소 이름</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td>숙소 사진</td>
							<td><input type="text" name="ac_img"></td>
						</tr>
						<tr>
							<td>숙소 정보</td><td><input type="text" name="info"></td>
						</tr>
				
						<tr>
							<td>가격</td><td><input type="text" name="ac_price"></td>
						</tr>
						<tr>
							<td>숙소 전화번호</td><td><input type="text" name="ac_phone"></td>
						</tr>
						<tr>
							<td>무통장 계좌 번호</td><td><input type="text" name="ac_account"></td>
						</tr>
						
						<tr>
							<td><input type="reset" value="초기화"></td>
							<td><input type="submit" value="등록"></td>
						</tr>
					</table>
	 
				</form>
				
			</div>
		</div>
	</section>

 	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>