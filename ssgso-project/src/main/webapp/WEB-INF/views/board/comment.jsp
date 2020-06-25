	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>

		<div id= "commentcss">
		<c:if test="${list.size() != 0}">
			<c:forEach items="${list}" var="dto">
			
			<table>
			<tr><td>${dto.writer}</td> <td>${dto.regdate}</td></tr>
			<tr><td>${dto.content}</td></tr>
			</table>
	 					
				
			</c:forEach>
		</c:if>
</div>