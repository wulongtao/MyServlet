<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Login</h1>
<form action="doLogin.jsp" name="loginForm" method="post">
	账号<input type="text" name="name" >
	<br>
	密码<input type="text" name="password">
	<br>
	<input type="checkbox" name="fav" value="哈哈哈"> f1
	<input type="checkbox" name="fav" value="f2"> f2
	<input type="checkbox" name="fav" value="f3"> f3
	<br>
	<input type="submit" >	
</form>
</body>
</html>