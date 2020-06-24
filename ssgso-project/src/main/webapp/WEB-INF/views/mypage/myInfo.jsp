<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmf" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- JSTL Function --%>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 예약내역</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css"/>
</head>
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
			<div class="secLeft">
				<jsp:include page="../include/myLeftmenu.jsp" />
			</div>
			
			<div class="secRight">
			회원정보 수정
				<form method="post">
					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" id="member_id" name="member_id" value="${sessionScope.memberId}" size="20" maxlength="12"
								readonly></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" id="name" name="name" value="${sessionScope.memberName}" size="20" maxlength="10"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="text" id="email" name="email" value="${sessionScope.memberEmail}" size="20" maxlength="20"></td>
						</tr>
						<c:if test="${sessionScope.memberCorporate_no != 0}">
							<tr>
								<td>사업자번호</td>
								<td><input type="text" id="corporate_no" name="corporate_no" value="${sessionScope.memberCorporate_no}" size="20" maxlength="10"></td>
							</tr>
						</c:if>

						<tr>
							<td>패스워드</td>
							<td><input type="text" id="password" name="password" size="20" maxlength="12" placeholder="4~12자리"></td>
						</tr>
						<tr>
							<td>패스워드확인</td>
							<td><input type="text" id="check" name="check" size="20" maxlength="12" placeholder="4~12자리"></td>
						</tr>
						
						<c:choose>
							<c:when test="${sessionScope.gender == M}">
								<tr>
									<td>성별</td>
									<td><input type="text" id="gender" name="gender" value="남성" size="20" maxlength="10" readonly></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td>성별</td>
									<td><input type="text" id="gender" name="gender" value="여성" size="20" maxlength="10" readonly></td>
								</tr>
							</c:otherwise>
						</c:choose>
						<tr>
							<td>회원가입일</td>
							<td><input type="text" id="create_date" name="create_date" value="${sessionScope.memberCreate_date}" size="20" maxlength="20" readonly></td>
						</tr>
						<tr>
							<td><input type="submit" id="update" value="수정 완료"></td>	
							<td><input type="submit" id="delete" value="회원 탈퇴"></td>				
						</tr>
					</table>
				</form>			
			</div>
		</div>
	</section>

 	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>