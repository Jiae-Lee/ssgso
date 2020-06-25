<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="insertComment" method="post">
		<input type="hidden" id="rno" name="rno" value="${CommentDto.rno}">
		<input type="hidden" id="board_no" name="board_no" value="${board_no}">
		댓글 작성자 : <input type="text" name="writer" /><br> 댓글 내용
		<textarea rows="4" cols="100" name="content"></textarea>

		<input type="submit" value="댓글달기">
	</form>


</body>
</html>