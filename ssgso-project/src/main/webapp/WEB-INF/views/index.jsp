<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>SSGSO</title>
<meta charset="utf-8">
<meta name="ssgso" content="숙소 예약은 ssgso!">
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rangeslider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>

	<div class="site-wrap">

		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>

		<header class="site-navbar py-2 bg-white" role="banner">
			<jsp:include page="include/menu.jsp" />
		</header>

		<!-- 메인 이미지, 서치 부분 -->
		<div class="site-blocks-cover overlay"
			style="background-image: url(<c:url value="/images/hero_1.jpg"/>);" data-aos="fade"
			data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row align-items-center justify-content-center text-center">
					<div class="col-md-10">
						<div class="row justify-content-center mb-4">
							<div class="col-md-8 text-center">
								<h1 data-aos="fade-up">
									Search for <span class="typed-words"></span>
								</h1>
								<p data-aos="fade-up" data-aos-delay="100">
									원하는 숙소이름, 장소, 해쉬태그로 검색해보세요!
								</p>
							</div>
						</div>

						<div class="form-search-wrap p-2" data-aos="fade-up"
							data-aos-delay="200">
							<form method="post">
								<div class="row align-items-center">
									<div class="col-lg-12 col-xl-4 no-sm-border border-right">
										<input type="text" class="form-control" placeholder="What are you looking for?">
									</div>
									<div class="col-lg-12 col-xl-3 no-sm-border border-right">
										<div class="wrap-icon">
											<span class="icon icon-room"></span> 
											<input type="text" class="form-control" placeholder="Location">
										</div>

									</div>
									<div class="col-lg-12 col-xl-3">
										<div class="select-wrap">
											<span class="icon"><span class="icon-keyboard_arrow_down"></span></span> 
											<select class="form-control" name="" id="">
												<option value="all">All Categories</option>
									            <c:forEach var="cat" items="${list}">
									                <option value="${cat.cat_val}">${cat.cat_val}</option>
									            </c:forEach>
											</select>
										</div>
									</div>
									<div class="col-lg-12 col-xl-2 ml-auto text-right">
										<input type="submit" class="btn btn-primary" value="Search">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section" data-aos="fade">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 text-center border-primary">
						<h2 class="font-weight-light text-primary">
							인기있는 숙소
						</h2>
						<p class="color-black-opacity-5">가장 조회수가 높은 숙소를 확인하세요!</p>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="<c:url value="/images/img_1.jpg"/>" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark" data-toggle="tooltip" data-placement="left" title="Bookmark">
								<span class="icon-heart"></span>
								</a>
								<a class="px-3 mb-3 category" href="#">숙소 보러가기</a>
								<h2 class="mb-1">
									<a href="#">리베라 호텔</a>
								</h2>
								<span class="address">동선동, 성북구</span>
							</div>
						</div>

					</div>
					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="<c:url value="/images/img_2.jpg"/>" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark"><span class="icon-heart"></span></a>
								<a class="px-3 mb-3 category" href="#">숙소 보러가기</a>
								<h2 class="mb-1">
									<a href="#">델루나</a>
								</h2>
								<span class="address">아이유 존예</span>
							</div>
						</div>

					</div>
					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4">

						<div class="listing-item">
							<div class="listing-image">
								<img src="<c:url value="/images/img_3.jpg"/>" alt="Image" class="img-fluid">
							</div>
							<div class="listing-item-content">
								<a href="#" class="bookmark"><span class="icon-heart"></span></a>
								<a class="px-3 mb-3 category" href="#">숙소 보러가기</a>
								<h2 class="mb-1">
									<a href="#">뉴딜 호텔</a>
								</h2>
								<span class="address">저라면 여기 안갑니다</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 인기 테마 -->
		<div class="site-section">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 text-center border-primary">
						<h2 class="font-weight-light text-primary">인기있는 테마</h2>
						<p class="color-black-opacity-5">테마별로 숙소를 찾아보세요!</p>
					</div>
				</div>

				<div class="row align-items-stretch">
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100"> 
							<span class="icon"><span class="flaticon-house"></span></span> 
							<span class="caption mb-2 d-block">한달살기</span>
							<span class="number">1,004</span>
						</a>
					</div>
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100">
							<span class="icon"><span class="flaticon-guitar"></span></span>
							<span class="caption mb-2 d-block">파티룸</span> 
							<span class="number">2,082</span>
						</a>
					</div>
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100">
							<span class="icon"><span class="flaticon-gym"></span></span>
							<span class="caption mb-2 d-block">헬스시설</span> 
							<span class="number">888</span>
						</a>
					</div>
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100">
							<span class="icon"><span class="flaticon-shopping-bag"></span></span>
							<span class="caption mb-2 d-block">브라이덜샤워</span> 
							<span class="number">59</span>
						</a>
					</div>
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100">
							<span class="icon"><span class="flaticon-mexican-taco"></span></span>
							<span class="caption mb-2 d-block">조식</span> 
							<span class="number">1,058</span>
						</a>
					</div>
					<div class="col-sm-6 col-md-4 mb-4 mb-lg-0 col-lg-2">
						<a href="#" class="popular-category h-100">
							<span class="icon"><span class="flaticon-cocktail"></span></span>
							<span class="caption mb-2 d-block">커플</span> 
							<span class="number">777</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<c:choose>
		<c:when test="${sessionScope.memberId == null}">
		<!-- 하단 로그인 -->
		<div class="py-5 bg-primary">
			<div class="container">
				<div class="row text-center">
					<div class="col-md-12">
						<h2 class="mb-2 text-white">
						아직 회원이 아니신가요?
						</h2>
						<p class="mb-4 lead text-white-opacity-05">
						지금 바로 가입하고 무료로 숙소 예약을 해보세요 :)
						</p>
						<p class="mb-0">
							<a href="<%=contextPath%>/join/joinHome" class="btn btn-outline-white text-white btn-md font-weight-bold">
							SignUp
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		</c:when>
		</c:choose>

		<!-- footer -->
		<footer class="site-footer">
			<jsp:include page="include/footer.jsp" />
		</footer>
	</div>

	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
	<script	src="<c:url value="/resources/js/bootstrap-datepicker.min.js"/>"></script>
	<script src="<c:url value="/resources/js/aos.js"/>"></script>
	<script src="<c:url value="/resources/js/rangeslider.min.js"/>"></script>
	<script src="<c:url value="/resources/js/typed.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	<script>
		var typed = new Typed('.typed-words', {
			strings : [ "Hotels", "Location", "Hashtag", "Categories" ],
			typeSpeed : 80,
			backSpeed : 80,
			backDelay : 3000,
			startDelay : 1000,
			loop : true,
			showCursor : true
		});
	</script>

</body>
</html>