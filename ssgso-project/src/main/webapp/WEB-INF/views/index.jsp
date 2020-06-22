<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSGSO</title>

<link rel="shortcut icon" type="image/x-icon" href="<c:url value="images/favicon.ico"/>">
<link rel="stylesheet" href="<c:url value="css/main.css"/>" type="text/css"/>
<script type="text/javascript" src="<c:url value="js/main.js"/>"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function(){
	  $('.bxslider').bxSlider({
		mode : 'fade', //이미지 교체 방식 'horizontal','vertical','fade'
		captions : false, //title 출력여부
		sliderWidth : 1000, //슬라이드 가로 길이  
		sliderHeight : 450, //슬라이드 가로 길이  
		paperCustom : '#bx-paper', //미리보기 이미지
		
		//====추가속성===
		adaptiveHeight : true, //세로값 고정
		auto : true, //이미지 회전 자동 실행 여부
		autuControls : false, //시작 중지 버튼 노출 여부
		pause : 4000, //하나의 이미지가 정지해서 보여지는 시간
		speed : 1000 //이미지가 다음 이미지로 바뀌는데 걸리는 시간.
		
	  });
	});
</script>
</head>
<body>
	<header>
		<div id="login">
			<jsp:include page="include/login.jsp" />
		</div>
		
		<div class="logo">
		 	<a href="<%=contextPath%>/index"><img src="<c:url value="images/logo2.png"/>"></a>
		</div>
		
		<nav>
			<jsp:include page="include/menu.jsp" />
		</nav>
	</header>
	<section>
		<div class="searchwrap">
			<form>
				<input type="search" class="search" value="숙소 이름 또는 테마를 입력해 검색하세요 :)">
				<input type="button" value="검색">
			</form>
		</div>
		
		<div id="jsimage">
			<div class="bxslider">
				<div><img src="<c:url value="images/blur1.png"/>" alt="사진1"></div>
				<div><img src="<c:url value="images/blur2.png"/>" alt="사진2"></div>
				<div><img src="<c:url value="images/blur3.png"/>" alt="사진3"></div>
				<div><img src="<c:url value="images/blur4.png"/>" alt="사진4"></div>
			</div>		
		</div><!-- end : jsimage -->
		
		<div id="theme_recommend">
			<div class="title_text">추천 테마 숙소</div>
			<div class="title_more"><a href="<%=contextPath%>/ssgso/ssgsoThemeRecommend">more</a></div>
		</div>
		
		<div id="ranking">
			<div class="rank_top">
				<div class="title_text">상위 랭킹 숙소</div>
				<div class="title_more"><a href="<%=contextPath%>/ssgso/ssgsoRanking">more</a></div>
			</div>
			<div class="rank_con">
				<div class="rank_list">
					<a href="#"><img class="list_image" src="" /></a>
					<p class="list_name"><a href="#">test</a></p>
				</div>
				<div class="rank_list">
					<a href="#"><img class="list_image" src="" /></a>
					<p class="list_name"><a href="#">test</a></p>
				</div>
				<div class="rank_list">
					<a href="#"><img class="list_image" src="" /></a>
					<p class="list_name"><a href="#">test</a></p>
				</div>
				<div class="rank_list">
					<a href="#"><img class="list_image" src="" /></a>
					<p class="list_name"><a href="#">test</a></p>
				</div>
			</div>
		</div>
	
	</section>

	<footer>
		<jsp:include page="include/footer.jsp" />
	</footer>

</body>
</html>