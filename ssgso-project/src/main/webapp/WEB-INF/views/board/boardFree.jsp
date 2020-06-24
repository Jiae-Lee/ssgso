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

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
table.list {
	width: 100%;
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    margin: 10px 0;
}
.list th{ text-align : center;}
.list_no { width: 10%; text-align : center;}
.list_title { width: 60%; padding-left: 10px; }
.list_date { width: 20%; text-align : center;}
.list_count { width: 10%; text-align : center;}

.writebutton{float: right;}
</style>
<script>
	$(document).ready(function(){
		$("tr:even").css("background-color", "#dedcee");
		$("tr:odd").css("background-color", "white");
		$("tr:first").css("background-color", "#6a60a9");
		$("tr:first").css("color", "white");
	});
</script>
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
	</section>

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