<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>M to M</title>
</head>
<body>

<c:choose>
<c:when test="${mode=='MODE_HOME'}">

<div>
	<ul>
		<li><a href="/welcome">처음으로</a></li>
		<li><a href="#">로그인</a></li>
		<li><a href="/regist">회원가입</a></li>
	</ul>
</div>
</c:when>

<c:when test="${mode=='MODE_REGIST'}">

<div>
	<h2>회원가입</h2>

	<form action="save-user" method="post">
		<input type="hidden" name="id" value="${user.id}"/>
		<div>
			<label>아이디</label>
			<input type="text" name="userid" value="${user.userid}">
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="password" value="${user.password}">
		</div>
		<div>
			<label>이메일</label>
			<input type="email" name="email" value="${user.email}">
		</div>
		<div>
			<input type="submit" value="가입하기"/>
		</div>
</form>
</div>
</c:when>
</c:choose>

</body>
</html>