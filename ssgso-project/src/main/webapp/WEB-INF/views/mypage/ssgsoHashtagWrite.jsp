<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var arrInput = new Array(0);
  var arrInputValue = new Array(0);
 
function addInput() {
  arrInput.push(arrInput.length);
  arrInputValue.push("");
  display();
}
 
function display() {
  document.getElementById('parah').innerHTML="";
  for (intI=0;intI<arrInput.length;intI++) {
    document.getElementById('parah').innerHTML+=createInput(arrInput[intI], arrInputValue[intI]);
  }
}
 
function saveValue(intId,strValue) {
  arrInputValue[intId]=strValue;
}  
 
function createInput(id,value) {
  return "<input type='text' name = 'hashtag' id='test "+ id +"' onChange='javascript:saveValue("+ id +",this.value)' value='"+ 
 
value +"'><br>";
}
 
function deleteInput() {
  if (arrInput.length > 0) { 
     arrInput.pop(); 
     arrInputValue.pop();
  }
  display(); 
}

	
</script>
<body>
	<br>
	EL : ${roadFullAddr}
	<br>
	EL  : ${name}
	<br>
	c:out : <c:out value="${roadFullAddr}" default="이재원" />
	<br>
	<br>
	<h1>장소에 맞는 해쉬태그를 추가해보세요 :)</h1>
	
	<form action="<%=contextPath%>/hashtag/create" method="post">
		<br>
		<span id="parah"></span>
		<input type="hidden" name="name" value="${name}" />
		<input type="button" value="추가" onclick="addInput();" />
		<input type="button" value="삭제" onclick="deleteInput();"/>
		<input type="submit" value="전송"/>
	</form>
	
  
</body>
</html>