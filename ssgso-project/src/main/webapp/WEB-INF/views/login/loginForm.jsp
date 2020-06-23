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
<%--로그인 폼 화면 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(function() {
		if ('${msgPw}' != "") {
			alert('${msgPw}');
		} else if ('${msgId}' != "") {
			alert('${msgId}');
		}
	})

	$(document).ready(function() {
		// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		var userInputId = getCookie("userInputId");
		$("input[name='member_id']").val(userInputId);

		if ($("input[name='member_id']").val() != "") { // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
			$("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		}

		$("#idSaveCheck").change(function() { // 체크박스에 변화가 있다면,
			if ($("#idSaveCheck").is(":checked")) { // ID 저장하기 체크했을 때,
				var userInputId = $("input[name='member_id']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			} else { // ID 저장하기 체크 해제 시,
				deleteCookie("userInputId");
			}
		});

		// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		$("input[name='member_id']").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
			if ($("#idSaveCheck").is(":checked")) { // ID 저장하기를 체크한 상태라면,
				var userInputId = $("input[name='member_id']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			}
		});
	});

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
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
<h1>로그인</h1>
	<form action="<%=contextPath%>/login/loginCheck.do" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="member_id" name="member_id" size="20" maxlength="10"
					required></td>
				<td><input type="checkbox" id="idSaveCheck">아이디 저장</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" id="password" name="password" size="20"
					maxlength="20" required>
					<c:if test="${msg == 'failure'}">
						<div style="color: red">
						아이디 또는 비밀번호가 일치하지 않습니다.
						</div>
					</c:if>
					<c:if test="${msg == 'logout'}">
						<div style="color:red">
							로그아웃 되었습니다.
						</div>
					</c:if>
				</td>
				<td><input type="submit" value="로그인"></td>
					
			</tr>
			<tr>
				<td colspan="2"><a href="<%=contextPath%>/login/searchId">아이디 찾기ㅣ</a>
					&nbsp; &nbsp;
					<a href="<%=contextPath%>/login/searchPw">비밀번호 찾기ㅣ</a> 
					&nbsp; &nbsp;	
					<a href="<%=contextPath%>/join/joinHome">회원가입</a>
				</td>
			</tr>
			
		</table>
	</form>
<a href="<%=contextPath%>/index">[인덱스]</a>
</body>
</html>