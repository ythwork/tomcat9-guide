<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>환영합니다.</title>
	</head>
	<body>
		<%
			String name = null;
			String jsessionid = null;
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("name")) 
						name = cookie.getValue();
					if(cookie.getName().equals("JSESSIONID")) 
						jsessionid = cookie.getValue();
				}
			}
		%>
	<h3>반갑습니다! <%=name%>님, </h3>
	<h4>JSESSIONID = <%=jsessionid %></h4>
	<br><br>
	<form action="/session/logout" method="POST">
		<input type="submit" value="로그아웃" >
	</form>
	</body>
</html>