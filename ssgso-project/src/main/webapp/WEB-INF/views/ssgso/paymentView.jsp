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
<title>결제 완료 페이지</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
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
			<h2>예약이 완료 되었습니다.</h2>
			<br>
			<table border="1">
				<tr>
					<th>예약 내역</th>
				</tr>
				<tr>
					<td> 구매자 : ${sessionScope.memberName}<br> 
						   방 이름 : ${AccomodationDto.name} <br> 
						   날짜 : ${date_from}~${date_to} <br>
						   인원 : ${person} <br>
						   결제금액 : ${AccomodationDto.ac_price}<br>
					</td>
				</tr>
			</table>
			<br> 
			<a href="<%=contextPath%>/index">[메인 화면]</a>
		</div>
	</section>
	<footer>
      <jsp:include page="../include/footer.jsp" />
   </footer>
</body>
</html>