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
	   		<input type="hidden" name="ac_no" value="${AccomodationDto.ac_no}">
	   		<input type="hidden" name="date_from" value="${date_from}">
	   		<input type="hidden" name="date_to" value="${date_to}">
	   		<input type="hidden" name="person" value="${person}">
	   		<input type="hidden" name="mem_no" value="${sessionScope.memNo}">
	   		<table border="1">
			    <tr>
			    	<td> 숙소 이름 </td>
			        <td>${AccomodationDto.name}</td>	             
			    </tr>
			    <tr>
			    	<td> 숙소 정보 </td>
			        <td>${AccomodationDto.info}</td>	             
			    </tr>
			    <tr>
			    	<td> 숙소 주소 </td>
			        <td>${AccomodationDto.address}</td>	             
			    </tr>
			    <tr>
			    	<td> 숙소 번호</td>
			        <td>${AccomodationDto.ac_phone}</td>	             
			    </tr>
			    <tr>
			    	<td> 계좌 번호 </td>
			        <td>${AccomodationDto.ac_account}</td>	             
			    </tr>
			    <tr>
			    	<td> 숙소 가격 </td>
			        <td>${AccomodationDto.ac_price}</td>	             
			    </tr>
			    <tr>
			    	<td> 숙소 카테고리 </td>
			        <td>${AccomodationDto.category}</td>	             
			    </tr>
			    <c:if test="${sessionScope.memberName}">
			    	<tr>
			    		<td> 구매자 </td>
			        	<td>${sessionScope.memberName}</td>	             
			    	</tr>
			    </c:if>
			    	<tr>
			    		<td> 체크인 </td>
			        	<td>${date_from}</td>	             
			    	</tr>
			    	<tr>
			    		<td> 체크아웃 </td>
			        	<td>${date_to}</td>	             
			    	</tr>
			    	<tr>
			    		<td> 인원 </td>
			        	<td>${person}</td>	             
			    	</tr>
			    	<!-- 결제하기 버튼 누르면 작은 새창 열리고 결제하고 DB 넣는거 만들기 -->
			    <tr>
			       	<td><input type="submit" value="결제하기"></td> 
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