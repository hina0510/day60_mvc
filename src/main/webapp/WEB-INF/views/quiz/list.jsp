<%@page import="com.care.root.MemberDTO"%>
<%@page import="com.care.root.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<jsp:useBean id="dto" class="com.care.root.MemberDTO" />
		<c:forEach var="list" items="${dao.list(dto) }">	
			<tr>
				<td>${list.id}</td>
				<td><a href="detail?id=${list.id}">${list.pwd}</a></td>
				<td>${list.name}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="3"><a href="index">index이동</a></td>
		</tr>
	</table>
</body>
</html>