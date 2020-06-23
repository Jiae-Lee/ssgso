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
<%-- 일반 회원가입 --%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		
		if($('#email').val()=="") { // 이메일 공백 검사
			alert("이메일을 입력해주세요.");
			return false;
		} else if($('#corporate_no').val()==""){ // 사업자번호 공백 검사
			alert("사업자번호를 입력해주세요.");
			return false;
		} else if(!regExp.test($('#email').val())) { // 이메일 유효성 검사
			alert("이메일 주소가 유효하지 않습니다.");
			$('#email').focus();
			return false;
		} else if($('#corporate_no').val().length!=10){ // 사업자번호 10자 확인
			alert("사업자번호는 10자입니다.");
			return false;
		} else if(pwd.length<4 || pwd.length>12 ){ // 비밀번호 글자수 검사
			alert("비밀번호는 4자리 이상 12자리 이하여야 합니다.");
			$('#password').val("");
			$('#check').val("");
			$('#password').focus();
			return false;
		} else if(pwd != "" || chk != "") { // 비밀번호, 비밀번호확인 공백 검사
			if(pwd == chk) { // 패스워드랑 패스워드 확인이 같을 시
				alert("비밀번호 확인 완료, 회원가입 성공")
				return true;
			} else { // 패스워드랑 패스워드 확인이 다를 시
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
<style>
body {
	text-align: center;
}

table {
	margin: auto;
}
</style>
</head>
<body>
	<form action="<%=contextPath%>/join/joinSuccess" method="get">
		<input type="hidden" name="grade" value="2"/>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="member_id" name="member_id" size="20" maxlength="15"
					required></td>
				<td><button class="idCheck" type="button" id="idCheck" value="N">중복확인</button></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="20" maxlength="10"
					required></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" id="email" name="email" size="20" maxlength="20"
					required></td>
			</tr>
			<tr>
				<td>사업자번호</td>
				<td><input type="number" id="corporate_no" name="corporate_no" size="20" maxlength="15"
					required></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" id="password" name="password" size="20"
					maxlength="15" required></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" id="check" name="check" size="20"
					maxlength="15" required></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="M" checked>남자
					<input type="radio" name="gender" value="W">여자</td>
			</tr>
		</table>
		<input type="submit" id="submit" value="회원가입" disabled>
		<input type="button" value="취소">
	</form>
</body>
</html>