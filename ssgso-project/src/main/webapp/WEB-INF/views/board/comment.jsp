
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><%-- JSTL Function --%>

<style>
.commentboradstyle th {
	padding: 5px;
	board-bottom: 3px solid;
	text-align: left;
}

.commentboradstyle td {
	padding: 2px;
	board-bottom: 1px solid #ddd;
}
</style>

<div id="commentcss">
	<c:if test="${list.size() != 0}">
		<c:forEach items="${list}" var="dto">

			<table class="commentboradstyle">
				<tr>
					<th>작성자</th>
					<th>댓글내용</th>
					<th>작성일시</th>
				</tr>
				<tr>
					<td width="10%">${dto.writer}</td>
				
					<td width="50%">${dto.content}</td>
					<td>${dto.regdate}</td>
				</tr>

			</table>


		</c:forEach>
	</c:if>
</div>