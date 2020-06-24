<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 예약내역</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css" />
<style>
.rightheader {
	width: 95%; 
	height: 50px; 
	line-height: 50px;
	font-size: 20pt; 
	background: #6a60a9; 
	color: #fff;
	margin: 0 auto;
	vertical-align: middle;
	}

table{
	width: 95%;
	margin: 10px auto;
    border-collapse: collapse;
    border: 1px solid #6a60a9;
    text-align: left;
    line-height: 1.6;
	}
table tr td {
    border: 1px solid #6a60a9;

	}
table th {
    border: 1px solid #6a60a9;

	}
</style>
</head>
<body>
	<header>
		<div class="logo">
			<a href="<%=contextPath%>/index"><img
				src="<c:url value="/images/logo2.png"/>"></a>
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

				<table>
					<c:choose>
						<c:when test="${fn:length(list)>0}">
							<tr>
								<th>숙소번호</th>
								<th>숙소명</th>
								<th>숙소정보</th>
								<th>숙소사진</th>
								<th>위도/경도</th>
								<th>주소</th>
							</tr>
							<c:forEach items="${list}" var="dto">
								<tr>
									<td>${dto.ac_no}</td>
									<td>
										<a href="<%=contextPath%>/mypage/mySsgsoListView?ac_no=${dto.ac_no}">${dto.name}</a>
									</td>
									<td>${dto.info}</td>
									<td>${dto.ac_img}</td>
									<td>${dto.latitude},${dto.longitude}</td>
									<td>${dto.address}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</table>

			</div>
		</div>
	</section>

	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>