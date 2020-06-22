<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	text-align : center;
}
table{
	margin : auto;
}
</style>
</head>
<body>
	예약 내역
	<div id="header">
		<div id="login">
	     	<a href="<%=contextPath%>/login/loginform"/>로그인</a> | <a href="<%=contextPath%>/sitemap"/>사이트맵</a>
	     </div>
		<div class="search">검색</div>
	 </div><!-- end : header -->
	 
	   <br>
	 <div id="section">
	   	<table border="1px">
		   <tr>
		     <th>예약 내역</th>           
		   </tr>
		   <tr>
		     <td>구매자 이름 : 이지애<br>
		       	  방 이름 : 라마다 호텔 Room1 패밀리사이즈<br>
		                    인원 : 2명
		     </td> 
		   </tr>
		   <tr>
		      <td><a href="<%=contextPath%>/index"/>홈으로</a></td> 
		   </tr>
		</table>
	 </div><!-- end : section -->
	   <br>
	 <div id="footer">
	   	footer
	 </div><!-- end : footer -->
</body>
</html>