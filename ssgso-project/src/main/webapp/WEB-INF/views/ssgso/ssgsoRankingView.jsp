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
<title>숙소 디테일</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<style>
	#accwrap { width : 980px; height : 300px; margin : 0; padding : 0; border: 1px solid blue;}
	.accimg { width: 500px; height : 300px; float : left;border: 1px solid yellow;}
	.accname_text {font-size : 2em;}
	#infowrap { width : 450px; height : 300px; float : left;border: 1px solid green;}
</style>
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
			<div id="accwrap">
				<div class="accimg">
				 ${AccomodationDto.ac_img}
				 <!-- accomodation에 img 컬럼에 숙소 사진 삽입 필요 -->
				</div>
				<div id="infowrap">      
					<div class="accname">
						<div class="accname_text">
						${AccomodationDto.name}	
						</div>
					</div>
					
					<div class="accprice">
						<h3>가격</h3>
						<!-- accomodation과 room 테이블을 join해서 가격 가져오기  -->
					</div>    
						
						
					<div class="accinfo">
						<h3>공용시설</h3>
						<div class="accprice_text">${AccomodationDto.info}</div>
					</div>
					
					<div class="accaddress">
						<h3>주소</h3>
						<div class="accprice_address"> ${AccomodationDto.address}</div>
					</div>
				</div>
			</div><!-- end : accWrap -->
			<div id="roomwrap">
				방정보가 들어갈 부분입니다
			</div><!-- end : accWrap -->			
			<a href="<%=contextPath%>/ssgso/reservation"/>예약하기</a>		  
		</div>
   </section>
    <footer>
      <jsp:include page="../include/footer.jsp" />
   </footer>

</body>

</html>