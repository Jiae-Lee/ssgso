<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   String contextPath = request.getContextPath();
%>
<style>

.menu { /* 첫 ul */
	clear:both; 
	list-style-type : none;
	margin: 0 0 0 40px; 
	height: 30px;}
.menu li{ /*숙소 커뮤니티 등 대메뉴*/
    font-size: x-large;
    font-weight: 900;
	float: left; 
	margin: 0 50px;}
.menu li a{ /*대메뉴의 글씨*/
	display:block;
	font-size:14px;
	padding: 5px 10px 0 20px;
	margin: 0;
	color: purple;
}
.menu li:hover a{ /*대메뉴 마우스오버했을 때 글씨*/
	color: white;
	margin: 0;
	padding: 5px 10px 0 10px;
}
.menu li:hover a:hover{ /*대메뉴 펼쳐지고  글씨에 마우스오버했을 때*/
	color: white;
	font-weight: bold;
	margin: 0;
	padding: 5px 10px 0 10px;
}
.menu ul{ /*하위메뉴 목록*/
	width: 150px;
	position: absolute;
	list-style: none;
	margin: 0;
	padding: 0;
	text-align : center;
	opacity : 0;
}
.menu ul li{/*하위메뉴 각자의 리스트*/
	margin: 0;
	padding: 0;
	font-size: 10px;
}
.menu ul a{ /*하위메뉴 목록의 글자*/
	font-weight: normal;
}
.menu li:hover ul{
	margin-top : 5px;
	opacity: 1;
}
.menu li:hover ul li{
	background: #6a60a9;
	width: 150px;
	height: 30px;
	clear: both;
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