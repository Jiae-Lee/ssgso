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
<title>숙소 생성</title>
<link rel="stylesheet" href="<c:url value="/css/sub.css"/>" type="text/css"/>
<link rel="stylesheet" href="<c:url value="/css/mypage.css"/>" type="text/css"/>
<script>
	function goPopup() {
		// 주소 검색 팝업 페이지 호출(jusoPopup.jsp)에서 실제 주소 검색 URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do) 호출
		var pop = window.open("../popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(roadFullAddr) {
		// 팝업페이지에서 입력한 주소를 받아 정보 등록
		document.form.roadFullAddr.value = roadFullAddr;
	}
</script>
<style>
.rightheader {
	width: 95%; 
	height: 50px; 
	line-height: 50px;
	font-size: 20pt; 
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

.list #addbutton { width: 100px; float: right; border: none; height: 22px; background: #6a60a9; color: #fff; margin: 10px 3px 0 0;}
.list #resetbutton { width: 100px; float: right; border: none; height: 22px; margin-top: 10px;}
.searchButton {position: relative; top: -147px; magin: 0; padding: 0; left: 310px; width: 100px; height: 22px; border: none;}

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
			<div class="secLeft">
				<jsp:include page="../include/myLeftmenu.jsp" />
			</div>
			
			
			<div class="secRight">
			
				<div class="rightheader">숙소 등록</div>
				<form name="form" action="<%=contextPath%>/mypage/mySsgsoCreate" method="post">
					<table class="list">
						<tr>
							<th>숙소명</th>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="ac_price"></td>
						</tr>
						<tr>
							<th>계좌 번호</th>
							<td><input type="text" name="ac_account"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" id="roadFullAddr" style="width:80%;" name="roadFullAddr" placeholder="주소검색을 눌러 주소를 입력해주세요" required readonly />
							</td>
						</tr>
						<tr>
							<th>사진 등록</th>
							<td><input type="text" name="ac_img"></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" name="ac_phone"></td>
						</tr>
						<tr>
							<th>추가 정보</th>
							<td><input type="text" name="info"></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="등록" id="addbutton">
								<input type="reset" value="초기화" id="resetbutton">
							</td>
						</tr>
					</table>
				</form>
				<button class="searchButton" onclick="goPopup()">주소 검색</button>
				
			</div>
		</div>
	</section>

 	<footer>
		<jsp:include page="../include/footer.jsp" />
	</footer>

</body>
</html>