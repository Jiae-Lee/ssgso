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
<title>About</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
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
			<jsp:include page="../include/menu.jsp" />
    </header>

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../resources/images/js4.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <div class="row justify-content-center">
              <div class="col-md-8 text-center">
                <h1 data-aos="fade-up">About Us</h1>
                <p class="mb-0" data-aos="fade-up" data-aos-delay="100">공지와 개발진을 보아라~~~!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section "  data-aos="fade">
      <div class="container">
      	<!-- 공지사항 -->
        <div class="row mb-5">
          <div class="col-md-7" >
            <h3 class="text-primary">Notice</h3>
          </div>
        </div>
        <div class="row mb-3">
          <div class="col-md-4 mx-auto">
            <h3>공지사항</h3>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-4 ml-auto">
            <p>첫번째 문단입니당 <br>안녕하세요 2조에서 만든 <b>SSGSO</b>입니다. 글자를 많이 넣어서 있어보이게 해보겠습니다. 여러분 고생 많으셨고 다시는 이렇게 밤새서 팀플 할 일이 없었으면 좋겠어여 ㅠㅠ 너무 피곤하거든요 그래도 재밌고 유익하기도 했습니다 조금요,,</p>
          </div>
          <div class="col-md-4">
          	두번째 문단입니당 <br>
            <p>공지사항은 게시판으로 만들까 하다 게시판 형식은 커뮤니티에서 많이 적용해봐서 그냥 텍스트로 넣기로 했습니다.<br>
			팀 분위기도 너무 좋고 작업도 재밌는데 집에 가고싶네요.<br>
			보내주세요...<br>
			여러분... 집에 가요 우리...<br>
			제발...<br></p>
          </div>
        </div>
      	<!-- 공지사항  끝-->

      	<!-- 개발진 -->
        <div class="row mb-5">
          <div class="col-md-4 text-left border-primary">
            <h2 class="font-weight-light text-primary">Who We Are</h2>
            <p class="color-black-opacity-5">프로젝트 참여자들 입니다 :)</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="../resources/images/teamimage1.jpg" alt="김형준" class="img-fluid mb-3">
            <h3 class="h4">김 형준</h3>
            <p class="caption text-primary">로그인에 미친 사람</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 mt-md-5">
            <img src="../resources/images/teamimage2.jpg" alt="이동선" class="img-fluid mb-3">
            <h3 class="h4">이 동선</h3>
            <p class="caption text-primary">하드캐리전문</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="../resources/images/teamimage3.jpg" alt="이지애" class="img-fluid mb-3">
            <h3 class="h4">이 지애</h3>
            <p class="caption text-primary">씨마 깃마 부마 타이틀 획득</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0 mt-md-5">
            <img src="../resources/images/teamimage4.jpg" alt="최지수" class="img-fluid mb-3">
            <h3 class="h4">최 지수</h3>
            <p class="caption text-primary">게시판CRUD 끝내고 롤하고싶은 사람</p>
          </div>
        </div>
      	<!-- 개발진 -->
      </div>
    </div>

    
    <div class="site-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <img src="../resources/images/teamimage5.jpg" alt="신보경" class="img-fluid rounded">
          </div>
          <div class="col-md-5 ml-auto">
            <h2 class="text-primary">WANTED</h2>
            <p>뛰어난 코딩실력으로 조기취업하여 사라진 보경님을 찾습니다.</p>
            <p class="mb-4">
           		취업 후에도 많은 도움 주시고 책임감있게 임해주신 보경님에게 감사한 마음을 담아 특별한 공간을 마련해 봤습니다.
           		저희의 마음 거부하지 마시고 프로젝트 페이지에 박제되어주세요~~~!
            </p>

            <ul class="ul-check list-unstyled success">
              <li>이름 : 신보경</li>
              <li>나이 : 우리팀에서 제일 많음</li>
              <li>특징 : 코딩 잘 함</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    
    
    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Frequently Ask Question</h2>
            <p class="color-black-opacity-5">질문을 클릭해 약관을 확인해보세요!</p>
          </div>
        </div>


        <div class="row justify-content-center">
          <div class="col-8">
            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-1" role="button" aria-expanded="false" aria-controls="collapse-1" class="accordion-item h5 d-block mb-0">예약 취소는 어떻게 하나요?</a>

              <div class="collapse" id="collapse-1">
                <div class="pt-2">
                  <p class="mb-0">
                  	<br>
                  	1. 예약 취소는 마이페이지에서 직접 취소가 가능합니다. <br>
					2. 취소시 환불규정은 숙소마다 상이할 수 있으니, <br>
					&nbsp; 예약 전 각 숙소정보 페이지에 기재된 취소환불규정을 반드시 확인하셔야 합니다. <br>
					3. 체크인 이후의 예약취소 및 예약금 환불은 불가합니다. <br>
					<br>
                  </p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-4" role="button" aria-expanded="false" aria-controls="collapse-4" class="accordion-item h5 d-block mb-0">예약 변경은 어떻게 하나요?</a>
              <div class="collapse" id="collapse-4">
                <div class="pt-2">
                  <p class="mb-0">
                  	<br>
					1. 예약변경을 원하실 경우에는 기존 예약을 취소하신 후, 새로 예약하셔야 합니다.<br>
					2. 변경내용이 숙박수 혹은 인원수 감소인 경우는 SSGSO 고객센터(010-9697-0317, <br>
					&nbsp; 운영시간 14:00~14:05)로 전화 접수를 통해서만 변경신청이 가능합니다. <br>
					&nbsp; 예약변경 가능여부는 숙소별 객실운용정책(최소예약숙박수 등)에 따라 결정되며, <br>
					&nbsp; 예약변경이 가능할 경우 예약금 차액에 대한 환불여부는 예약 시 동의한 ‘취소환불규정’에 따릅니다 (단, 포인트 적립은 되지 않습니다.)<br>
					3. 예약금 외 숙소직접결제액이 있는 경우, 숙소직접결제액은 예약 시 동의한 취소환불규정의 적용을 받지 않으며, 숙소직접결제액의 환불여부는 숙소와 직접 협의하여야 합니다.<br>
					4. SSGSO를 통하지 않고, 숙소와의 직접적인 커뮤니케이션을 통해 예약을 변경하여 문제가 발생할 경우 SSGSO는 이에 대해 책임을 지지 않습니다.<br>
                  	<br>
                  </p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-2" role="button" aria-expanded="false" aria-controls="collapse-2" class="accordion-item h5 d-block mb-0">No-Show시 어떤 불이익이 있나요?</a>
              <div class="collapse" id="collapse-2">
                <div class="pt-2">
                  <p class="mb-0">
                  	<br>
					1. No-Show(예약취소 및 연락 없이 숙박 당일 체크인 하지 않는 것)를 일으켰을 경우, <br>
					&nbsp; 예약금 환불여부는 예약 시 동의한 ‘취소환불규정’에 따릅니다.<br>
					&nbsp; (단, 환불액이 있는 경우 체크인 날짜로부터 2주 이내로 반드시 고객센터로 접수해주셔야만 환불 받을 수 있습니다.)<br>
					2. No-Show를 발생시킨 회원은 SSGSO에서 제공하는 서비스(숙소예약 등)의 정상적인 이용이 제한될 수 있습니다.<br>
					<br>
					※ 천재지변, 교통편 취소와 연착, 파업, 시위, 테러 등으로 인한 예약취소/변경/No-Show의 경우에도 위 각 항목의 동일한 조항을 적용 받습니다.<br>
					※ 본 규정은 일반회원대상의 규정이며, 여행사 회원님 예약취소/변경/No-Show에 대한 환불규정은 여행사 예약관리 페이지에 별도 공지된 약관을 따릅니다.<br>
                  	<br>
                  </p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-3" role="button" aria-expanded="false" aria-controls="collapse-3" class="accordion-item h5 d-block mb-0">SSGSO의 책임면책 조항이 어떻게 되나요?</a>
              <div class="collapse" id="collapse-3">
                <div class="pt-2">
                  <p class="mb-0">
                  	<br>
                  	1. 실제와 다른 숙소정보로 인한 직간접 피해에 대해서는 SSGSO에서 고의 또는 중과실이 없는 한 책임을 지지 않습니다. <br>
					&nbsp;(SSGSO의 숙소정보는 예약을 위한 참고자료로 해당 숙소 측에서 직접 관리하고 있으며 숙소 내 자체 변동이나 기타사유로 실제와 차이가 있을 수 있습니다.)<br>
					2. 숙소 도착 후, 혹은 숙박 후 숙소의 시설 및 서비스가 기대에 못 미쳤다고 하여 예약금 환불을 요청할 수 없습니다.<br>
					3. 예약신청시 작성한 숙박자의 정보(숙박자명, 연락처, 이메일, 체크인 예정시간, 도착정보 등)가 정확하지 않거나, <br>
					&nbsp;정보 변경 후 SSGSO로 변경신청을 하지 않은 상태에서 발생한 문제에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
					4. 숙소에서 직간접적으로 발생된 대인 상해, 질병, 재산상의 손해 등의 비용적 손실에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
					5. 고객이 숙소 규정을 지키지 않거나 시설 및 설비, 물품 등에 손해를 입혔을 경우 현지 숙소와의 손해 배상문제에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
					6. 예약금을 제외한 나머지 숙소직접결제액이 있는 경우,숙소직접결제액에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
					7. SSGSO 고객센터를 거치지 않은 숙소와의 직접적 커뮤니케이션을 통해 발생한 문제(예약변경 및 취소 등)에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
					8. 천재지변이나 항공사 사정, 내란, 테러 등 국제 여행업 관행상에 인정되지 않는 사유로 인하여 서비스를 제공할 수 없는 경우 서비스 제공에 관한 책임에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
                  	<br>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

	<!-- footer -->
	<footer class="site-footer">
		<jsp:include page="../include/footer.jsp" />
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
<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>