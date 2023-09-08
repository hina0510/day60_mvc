<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<form action="login_check" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="login"><br>
		<a href="register">회원가입</a>
		<a href="list">모든 회원</a>
	</form>
</body>
</html>