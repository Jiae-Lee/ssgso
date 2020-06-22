<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String contextPath = request.getContextPath();
%>

<style>
.menu { 
	clear:both; 
	list-style-type : none;
    position: absolute;
    left: 20%;
	margin: 0; 
	height: 30px;
    font-size: x-large;
    font-weight: 900;}
.menu li{ 
	position: relatve;
	font-weight: 20px; 
	float: left; 
	margin: 5px 20px;}
.menu li a{
	display:block;
	font-size:14px;
	padding: 5px 10px 0 10px;
	margin: 0;
	color: purple;
}
.menu li:hover a{
	color: #6a60a9;
	margin: 0;
	padding: 5px 10px 0 10px;
}
.menu li:hover a:hover{
	color: #6a60a9;
	font-weight: bold;
	margin: 0;
	padding: 5px 10px 0 10px;
}
.menu ul{
	position: relatve;
	margin: 5px 20px;
	list-style: none;
	margin: 0;
	padding: 0;
	text-align : center;
	opacity : 0;
}
.menu ul li{
	margin: 0;
	padding: 0;
	font-size: 10px;
}
.menu ul a{
	font-weight: normal;
	color: black;
}
.menu li:hover ul{
	opacity: 1;
}
.menu li:hover ul li{
	height: 30px;
	overflow: visible;
	padding: 0;
}
</style>

	<ul class="menu">
		<li>숙소
			<ul>
				<li><a href="<%=contextPath%>/ssgso/ssgsoRanking">상위랭킹목록</a></li>
				<li><a href="<%=contextPath%>/ssgso/ssgsoThemeRecommend">추천테마</a></li>
			</ul>
		</li>
		
		<li>커뮤니티
			<ul>
				<li><a href="<%=contextPath%>/board/boardFree">자유게시판</a></li>
				<li><a href="<%=contextPath%>/board/boardEvent">이벤트게시판</a></li>
			</ul>
		</li>
		
		<li>고객센터
			<ul>
				<li><a href="<%=contextPath%>/service/serviceNotice">공지사항</a></li>
				<li><a href="<%=contextPath%>/service/servicePolicy">약관정책</a></li>
			</ul>
		</li>
	</ul>
