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
	   	<form action="<%=contextPath%>/ssgso/paymentView" method="post">
	   		<table border="1px">
			      <tr>
			         <th>구매자 이름</th>
			         <th>방 이름</th>
			         <th>인원</th>              
			      </tr>
			      <tr>
			         <td>이지애</td>
			         <td>라마다 호텔 Room1 패밀리사이즈</td>
			         <td>2명</td>		             
			      </tr>
			</table>
			<br>
			<table border="1px">
			      <tr>
			         <th>결제 정보</th>           
			      </tr>
			      <tr>
			        <td>연락처 : 010-8491-6633<br>
			        	무통장 입금 계좌 번호: 02-3342-2342 (ssgso)<br>
			        	가격 : 100,000원
			        </td> 
			      </tr>
			      <tr>
			        <td><input type="submit" value="결제하기"></td> 
			      </tr>
			</table>
		</form>
    </section>
   	<footer>
      <jsp:include page="../include/footer.jsp" />
   </footer>
</body>
</html>