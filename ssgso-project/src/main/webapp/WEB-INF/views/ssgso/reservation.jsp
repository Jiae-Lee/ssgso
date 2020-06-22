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
<title>예약 페이지</title>
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
         <form action="<%=contextPath%>/ssgso/payment" method="post">
			<table border="1px">
				<tr>
					<th colspan="2">날짜 및 인원 선택</th>
				</tr>
				<tr>
					<td>체크인</td>
					<td><input type="date" name="checkin"></td>
				</tr>
				<tr>
					<td>체크아웃</td>
					<td><input type="date" name="checkout"></td>
				</tr>
				<tr>
					<td>인원</td>
					<td>
					<select name="person">
					    <option value="1명">1명</option>
					    <option value="2명">2명</option>
					    <option value="3명">3명</option>
					    <option value="4명">4명</option>
					    <option value="5명">5명</option>
					    <option value="6명">6명</option>
					    <option value="7명">7명</option>
					    <option value="8명">8명</option>
					    <option value="9명">9명</option>
					    <option value="10명">10명</option>
					    <option value="11명">11명</option>
					</select>
					</td>
				</tr>
				<tr>
					<td colsapn="2">
						<input type="submit" value="예약하기">
					</td>
				</tr>
			</table>
		</form>
      </div>
   </section>
   <footer>
      <jsp:include page="../include/footer.jsp" />
   </footer>
</body>
</html>