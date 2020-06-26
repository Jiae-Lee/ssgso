<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmf" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String contextPath = request.getContextPath();
%>
<%-- 파트너 회원가입 --%>
<!DOCTYPE html>
<html>
<title>SSGSO</title>
<meta charset="utf-8">
<meta name="회원가입" content="회원가입 페이지 입니다">
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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

$(function () {
	$("#idCheck").click(function () {
		$.ajax({
			url : "idCheck",
			type : "POST",
			dataType : "json",
			data : {
				"member_id" : $('#member_id').val()
				},
			success : function(data) {
				if($('#member_id').val()=="") {             // 1. 아이디 미입력시
					alert("아이디를 입력해주세요.");
					$('#submit').attr("disabled", true);
				} else if($('#member_id').val().length <3 || $('#member_id').val().length > 12) { // 2. 아이디는 글자수 검사
					alert("아이디는 3자리 이상 12자리 이하여야 합니다.")
					$('#submit').attr("disabled", true);
				} else if(data == 0) {                      // 3. 중복확인 이상 없을시
					$('#idCheck').attr("value", "Y");
					alert("사용 가능한 아이디입니다.");
 					//$('#member_id').attr("disabled", true); // diabled 하면 아예 사용하지 않으므로 member_id 값을 불러오지 못한다. 그래서 readonly를 사용하였다.
					$('#member_id').attr("readonly", true); // 수정 불가
					$('#submit').attr("disabled", false);
				} else if(data == 1){                       // 4. 중복된 아이디가 있을시
					alert("중복된 아이디입니다.");
					$('#submit').attr("disabled", true);
				}
			}
		});
	});
	
	$("#cancel").click(function () { // 취소 누르면 새로고침
		location.href="joinCustomer";
	});
	
	$("#submit").click(function () { // 회원가입 버튼 누를시
		var pwd=$('#password').val();
		var chk=$('#check').val();
		var regExp = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/; // 정규식-이메일 유효성 검사
		
		// 이름 공백 확인
		if($('#name').val()=="") {
			alert("이름을 입력해주세요.");
			return false;
		}
		
		// 이메일 공백 확인
		if($('#email').val()=="") {
			alert("이메일을 입력해주세요.");
			return false;
		} 

		// 이메일 유효성 검사
		if(!regExp.test($('#email').val())) {
			alert("이메일 주소가 유효하지 않습니다.");
			$('#email').focus();
			return false;
		}

		// 사업자번호 공백 검사
		if($('#corporate_no').val()==""){ // 사업자번호 공백 검사
			alert("사업자번호를 입력해주세요.");
			return false;	
		} 

		// 사업자번호 자릿수 검사
		if($('#corporate_no').val().length!=10){ // 사업자번호 10자 확인
			alert("사업자번호는 10자입니다.");
			return false;
		}	

		// 비밀번호 자릿수 검사
		if(pwd.length<4 || pwd.length>12 ){
			alert("비밀번호는 4자리 이상 12자리 이하여야 합니다.");
			$('#password').val("");
			$('#check').val("");
			$('#password').focus();
			return false;
		}

		// 비밀번호 공백 검사, 서로 확인
		if(pwd != "" || chk != "") {
			if(pwd == chk) {
				alert("비밀번호 확인 완료, 회원가입 성공")
				return true;
			} else {
				alert("비밀번호를 다시 입력해주세요.")
				$('#password').val("");
				$('#check').val("");
				$('#password').focus();
				return false;
			}
		}
	});
	
})	
</script>
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


    <div class="site-section bg-light">
      <div class="container">
       <div class="row justify-content-center">
          <div class="col-8">

			<form action="<%=contextPath%>/join/joinSuccess" method="post" class="p-5 bg-white">
				<input type="hidden" name="grade" value="2"/>
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="member_id">ID</label>
					    <input type="text" id="member_id" name="member_id" size="20" maxlength="12" class="form-control" required>
					  </div>
					  <div class="col-md-12">
					    <button class="idCheck" type="button" id="idCheck" class="form-control" value="N" style="margin-top: 10px; float: right;">중복확인</button>
					  </div>
					</div>
						
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="name">이름</label>
					    <input type="text" name="name" size="20" maxlength="10" class="form-control" required>
					  </div>
					</div>
					
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="email">Email</label>
					    <input type="text" id="email" class="form-control" name="email" size="20" maxlength="20" placeholder="ex) a@b.com" required>
					  </div>
					</div>
					
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="email">사업자 번호</label>
					    <input type="number" id="corporate_no" name="corporate_no" size="20" maxlength="10" placeholder="10자리수" class="form-control"required>
					  </div>
					</div>
					
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="password">패스워드</label>
					    <input type="password" id="password" name="password" size="20" maxlength="12" placeholder="4~12자리" class="form-control" required>
					  </div>
					</div>
					
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="check">패스워드 확인</label>
					    <input type="password" id="check" name="check" size="20" maxlength="12" placeholder="4~12자리" class="form-control" required>
					  </div>
					</div>
					
					<div class="row form-group">
					  <div class="col-md-12">
					    <label class="text-black" for="gender">성별</label>
					    <input type="radio" name="gender" value="M" checked>남자
						<input type="radio" name="gender" value="W">여자
					  </div>
					</div>
		              
				<input type="submit" id="submit" class="btn btn-primary py-2 px-4 text-white btn-md font-weight-bold" value="회원가입" disabled>
				<input type="button" id="cancel" class="btn btn-primary py-2 px-4 text-white btn-md font-weight-bold" value="초기화">
			</form>
       </div>
      </div>
      </div>
    </div>

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