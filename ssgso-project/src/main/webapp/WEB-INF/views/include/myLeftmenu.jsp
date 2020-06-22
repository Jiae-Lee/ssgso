<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String contextPath = request.getContextPath();
%>
				
<ul class="mylist">
	<li><a href="<%=contextPath%>/mypage/myReservation">예약내역</a></li>
	<li><a href="<%=contextPath%>/mypage/myInfo">개인정보수정</a></li>
	<li><a href="<%=contextPath%>/mypage/mySsgsoList">내 숙소목록</a></li>
	<li><a href="<%=contextPath%>/mypage/mySsgsoWrite">숙소등록</a></li>
</ul>

<!-- 
적용할 것
1. 숙소 주인일경우에만 '내 숙소목록'과 '숙소 등록 '란이 보이도록
2. 해당 메뉴에 들어오면 font-weight: bold 속성 주기
 -->