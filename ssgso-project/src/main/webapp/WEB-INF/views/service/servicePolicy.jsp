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
<title>약관정책</title>
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<style>
#content { padding: 20px; text-align : left;}

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
		   
		   <h1>* 약관정책</h1>
		   <br>
		   <h4>예약취소</h4>
			1. 예약 취소는 마이페이지에서 직접 취소가 가능합니다.<br>
			2. 취소시 환불규정은 숙소마다 상이할 수 있으니, 예약 전 각 숙소정보 페이지에 기재된 취소환불규정을 반드시 확인하셔야 합니다.<br>
			3. 체크인 이후의 예약취소 및 예약금 환불은 불가합니다.<br>

		   <h4>예약변경</h4>
			1. 예약변경을 원하실 경우에는 기존 예약을 취소하신 후, 새로 예약하셔야 합니다.<br>
			2. 변경내용이 숙박수 혹은 인원수 감소인 경우는 SSGSO 고객센터(010-9697-0317, 운영시간 14:00~14:05)로 전화 접수를 통해서만 변경신청이 가능합니다. <br>
			       예약변경 가능여부는 숙소별 객실운용정책(최소예약숙박수 등)에 따라 결정되며, <br>
			       예약변경이 가능할 경우 예약금 차액에 대한 환불여부는 예약 시 동의한 ‘취소환불규정’에 따릅니다 (단, 포인트 적립은 되지 않습니다.)<br>
			3. 예약금 외 숙소직접결제액이 있는 경우, 숙소직접결제액은 예약 시 동의한 취소환불규정의 적용을 받지 않으며, 숙소직접결제액의 환불여부는 숙소와 직접 협의하여야 합니다.<br>
			4. SSGSO를 통하지 않고, 숙소와의 직접적인 커뮤니케이션을 통해 예약을 변경하여 문제가 발생할 경우 SSGSO는 이에 대해 책임을 지지 않습니다.<br>
			
		   <h4>No-Show</h4>
			1. No-Show(예약취소 및 연락 없이 숙박 당일 체크인 하지 않는 것)를 일으켰을 경우, 예약금 환불여부는 예약 시 동의한 ‘취소환불규정’에 따릅니다.<br>
			   (단, 환불액이 있는 경우 체크인 날짜로부터 2주 이내로 반드시 고객센터로 접수해주셔야만 환불 받을 수 있습니다.)<br>
			2. No-Show를 발생시킨 회원은 SSGSO에서 제공하는 서비스(숙소예약 등)의 정상적인 이용이 제한될 수 있습니다.<br>
			※ 천재지변, 교통편 취소와 연착, 파업, 시위, 테러 등으로 인한 예약취소/변경/No-Show의 경우에도 위 각 항목의 동일한 조항을 적용 받습니다.<br>
			※ 본 규정은 일반회원대상의 규정이며, 여행사 회원님 예약취소/변경/No-Show에 대한 환불규정은 여행사 예약관리 페이지에 별도 공지된 약관을 따릅니다.<br>
			
		   <h4>SSGSO 책임면책 조항</h4>
			1. 실제와 다른 숙소정보로 인한 직간접 피해에 대해서는 SSGSO에서 고의 또는 중과실이 없는 한 책임을 지지 않습니다. <br>
			   (SSGSO의 숙소정보는 예약을 위한 참고자료로 해당 숙소 측에서 직접 관리하고 있으며 숙소 내 자체 변동이나 기타사유로 실제와 차이가 있을 수 있습니다.)<br>
			2. 숙소 도착 후, 혹은 숙박 후 숙소의 시설 및 서비스가 기대에 못 미쳤다고 하여 예약금 환불을 요청할 수 없습니다.<br>
			3. 예약신청시 작성한 숙박자의 정보(숙박자명, 연락처, 이메일, 체크인 예정시간, 도착정보 등)가 정확하지 않거나, <br>
			       정보 변경 후 SSGSO로 변경신청을 하지 않은 상태에서 발생한 문제에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			4. 숙소에서 직간접적으로 발생된 대인 상해, 질병, 재산상의 손해 등의 비용적 손실에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			5. 고객이 숙소 규정을 지키지 않거나 시설 및 설비, 물품 등에 손해를 입혔을 경우 현지 숙소와의 손해 배상문제에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			6. 예약금을 제외한 나머지 숙소직접결제액이 있는 경우,숙소직접결제액에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			7. SSGSO 고객센터를 거치지 않은 숙소와의 직접적 커뮤니케이션을 통해 발생한 문제(예약변경 및 취소 등)에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			8. 천재지변이나 항공사 사정, 내란, 테러 등 국제 여행업 관행상에 인정되지 않는 사유로 인하여 서비스를 제공할 수 없는 경우 서비스 제공에 관한 책임에 대해서는 SSGSO에서 책임을 지지 않습니다.<br>
			
		   <h4>[부칙]</h4>
			본 약관은 2020년 6월 22일부터 시행됩니다.
					
					
		</div>
	</section>
	
	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer> 
</body>
</html>