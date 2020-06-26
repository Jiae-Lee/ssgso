<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
   String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css" type="text/css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(function () {
	
	$("#update").click(function() { // 회원정보 수정
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
				$("form").attr("action", "<%=contextPath%>/memberUpdate");
				alert("회원 정보 수정 완료!!");
				return true;
			} else {
				alert("비밀번호를 다시 입력해주세요.");
				$('#password').val("");
				$('#check').val("");
				$('#password').focus();
				return false;
				}
			}
		});

	$("#delete").click(function() { // 회원 탈퇴	
		var result = confirm("정말로 탈퇴하시겠습니까?ㅠㅠ")
		if(result){
			$("form").attr("action", "<%=contextPath%>/memberDelete");
		} else {
			return false;
		}
	});
})
</script>
<style>
.rightheader {
	width: 95%; 
	height: 50px; 
	line-height: 50px;
	font-size: 20pt; 
	text-align: center;
	background: #6a60a9; 
	color: #fff;
	margin: 0 auto;
	vertical-align: middle;
	}

table.list {
	width: 95%;
	margin: 10px auto;
    border-collapse: collapse;
    text-align: left;
    line-height: 1.6;
	}
.list th{ width: 20%; text-align : center; background: #dedcee;}
.list td{ width: 80%; height: 22px;}
.list td input {
	width: 98%; 
	margin: 0 10px;
    border-color: #dedcee;
    border-style: solid;}

#update { width: 100px; float: right; border: none; height: 30px; background: #6a60a9; color: #fff; margin: 10px 3px 0 0;}
#delete { width: 100px; float: right; border: none; height: 30px; margin-top: 10px;}

</style>
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

	<div id="content">
		<div class="secLeft">
			<jsp:include page="../include/myLeftmenu.jsp" />
		</div>
		
		<div class="secRight">
			<div class="rightheader">개인정보 수정</div>
			<form method="post">
				<table class="list">
					<tr>
						<th>아이디</th>
						<td><input type="text" id="member_id" name="member_id" value="${sessionScope.memberId}" size="20" maxlength="12"
							readonly></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" id="name" name="name" value="${sessionScope.memberName}" size="20" maxlength="10"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" id="email" name="email" value="${sessionScope.memberEmail}" size="20" maxlength="20"></td>
					</tr>
					<c:if test="${sessionScope.memberCorporate_no != 0}">
						<tr>
							<th>사업자번호</th>
							<td><input type="text" id="corporate_no" name="corporate_no" value="${sessionScope.memberCorporate_no}" size="20" maxlength="10"></td>
						</tr>
					</c:if>

					<tr>
						<th>패스워드</th>
						<td><input type="text" id="password" name="password" size="20" maxlength="12" placeholder="4~12자리"></td>
					</tr>
					<tr>
						<th>패스워드확인</th>
						<td><input type="text" id="check" name="check" size="20" maxlength="12" placeholder="4~12자리"></td>
					</tr>
					
					<c:choose>
						<c:when test="${sessionScope.gender == M}">
							<tr>
								<th>성별</th>
								<td><input type="text" id="gender" name="gender" value="남성" size="20" maxlength="10" readonly></td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<th>성별</th>
								<td><input type="text" id="gender" name="gender" value="여성" size="20" maxlength="10" readonly></td>
							</tr>
						</c:otherwise>
					</c:choose>
					<tr>
						<th>회원가입일</th>
						<td><input type="text" id="create_date" name="create_date" value="${sessionScope.memberCreate_date}" size="20" maxlength="20" readonly></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" id="update" value="수정 완료">
							<input type="submit" id="delete" value="회원 탈퇴">
						</td>				
					</tr>
				</table>
			</form>			
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