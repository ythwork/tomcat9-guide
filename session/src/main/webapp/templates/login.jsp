<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
	    <title>로그인</title>
	</head>
	<body>
		<form action="/session/login" method="POST">
		    회원 : <input type="text" name="member"><br>
		    비밀번호 : <input type="password" name="password"><br>
		    <input type="submit" value="로그인">
		</form>
	</body>
</html>