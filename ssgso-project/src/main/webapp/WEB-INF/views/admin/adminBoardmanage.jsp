<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 관리 페이지.</title>
<style>
	*{
		text-align: center;
	}
	#header { width:100%; }

	#section { width:100%; }
	#footer { width:100%; }
table{
	margin : auto;
}
</style>
</head>
<body>
	게시판  관리 화면입니다.
	<div id="header">
      <div id="login">
      <a href="<%=contextPath%>login/loginform"/>로그인</a> | <a href="<%=contextPath%>/sitemap"/>사이트맵</a>
      </div>
      <div class="search">검색</div>
   </div><!-- end : header -->
   <br>
   <div id="section">
	   <table border="1px">
		      <tr>
		         <th>번호</th>
		         <th>제목</th>
		         <th>작성자</th>              
		      </tr>
		      <tr>
		         <td>1</td>
		         <td>안녕하세요. 문의 사항 있습니다.</td>
		         <td>신보경</td>		             
		      </tr>
		      <tr>
		         <td>2</td>
		         <td>아 개빡침. 하기 싫다.</td>
		         <td>이지애</td>		             
		      </tr>
		</table>
		
		<form action="<%=contextPath%>/admin/adminBoardmanage" method="post">
			<input type="text" placeholder="검색하세요">
			<input type="submit" value="검색">
		    <input type="submit" value="삭제">
		</form>
   </div><!-- end : section -->
   <br>
   <div id="footer">
   	footer
   </div><!-- end : header -->
</body>
</html>