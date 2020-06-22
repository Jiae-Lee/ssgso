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
<title>내 예약내역</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css"/>
</head>
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
				<form action="" method="post" id="acconmodation">
					숙소 이름 <input type="text" name="name"><br>
					숙소 사진 <input type="text" name="ac_img"><input type="button" value="사진찾기"><br>
					숙소 정보 <input type="text" name="info"><br>
					숙소 위치(위도 latitude,경도 longitude)<br>
						-방 등록(방 개수 선택 최소 1개~최대 5개)
						<select size="1">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						<br>
							방 이름(호수) <input type="text" name="title"><br>
							방 정보 <input type="text" name="content"><br>
							방 가격 <input type="text" name="title"><br>
							최소인원 <input type="text" name="min_per"><br>
							최대인원 <input type="text" name="max_per"><br>
					<input type="submit" value="등록">
					<input type="reset" value="초기화">
				</form>
			</div>
		</div>
	</section>

 	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>