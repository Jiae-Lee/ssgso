<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<%
   String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>subindex</title>
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
         
 <table>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일시</th>
				</tr>
			</c:when>
		</c:choose>	
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.board_no}</td>
				<td><a href="<%=contextPath%>/board/selectBoardFree?board_no=${dto.board_no}">${dto.title}</td>
				<td>${dto.create_data}</td>
			</tr>
		</c:forEach>
	
	</table>
	
	
		<form action="<%=contextPath%>/board/boardFreeWrite" method="post">
		<input type="submit" value="글쓰기">
	</form>
      
      
      </div>
   </section>
   
   <footer>
      <jsp:include page="../include/footer.jsp" />
   </footer> 

</body>
</html>