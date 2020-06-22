<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>
<%
	String contextPath = request.getContextPath();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body { text-align : center; }
#header { width:100%; border : 1px solid red;}

#section { width:1000px; height: 800px; margin : 0 auto; border:1px solid green;}
#section .secLeft { width:300px; height: 100%; float:left; margin: 0;border: 1px solid yellow;}
#section .secRight { width:680px; height: 100%; float:left; margin: 0 0 0 10px; border: 1px solid orange;}

#footer { width:100%; marrgin : 0 auto;}
</style>
</head>
<body>
   <h1>serviceNotice.jsp입니다</h1><hr>
   <div id="header">
      <h2>header</h2>

   </div><!-- end : header -->
   <div id="section">
      <div class="secLeft">
         <ul>
            <li>고객센터</li>
            <li><a href="<%=contextPath%>/service/serviceNotice">공지사항</a></li>
            <li><a href="<%=contextPath%>/service/serviceQuestion">자주하는질문</a></li>
            <li><a href="<%=contextPath%>/service/serviceOnetooneView">1:1문의내역</a></li>
       
         </ul>
      </div>
      
      <div class="secRight">
      예약 내역 내용 들어갈 부분입니다
      
      </div>
   </div><!-- end : section -->

   <div id="footer">
      <h2>footer</h2>
   </div><!-- end : header -->


</body>
</html>