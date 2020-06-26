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

		<table>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"
/></td>
			</tr>
			<tr>
				<td>댓글내용</td>
				<td><textarea rows="4" cols="100" name="content"></textarea></td>
				<td rowspan="2"><input type="submit" value="댓글달기"></td>
			</tr>

		</table>


		
	</form>


</body>
</html>