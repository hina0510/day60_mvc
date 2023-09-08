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
	<form action="register_result" method="post">
		<input type="text" name="id" placeholder="id"><br>
		<input type="text" name="pwd" placeholder="pwd"><br>
		<input type="text" name="name" placeholder="name"><br>
		<input type="submit" value="register">
	</form>
</body>
</html>