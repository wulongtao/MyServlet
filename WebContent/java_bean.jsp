<%@page import="beans.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>
<%-- <%
	Users user = new Users();
	user.setUsername("admin");
	user.setPassword("123465");
%> --%>
</h1>

<jsp:useBean id="myUsers" class="beans.Users" scope="page" />
<jsp:setProperty property="*" name="myUsers"/>
<jsp:setProperty property="password" value="customPassword" name="myUsers"/>
<jsp:setProperty property="username" param="uu" name="myUsers"/>


<h2>用户名:<%=myUsers.getUsername() %></h2>
<h2>密码:<%=myUsers.getPassword() %></h2>

<br>

<h2>用户名:<jsp:getProperty name="myUsers" property="username"/></h2>
<h2>密码:<jsp:getProperty name="myUsers" property="password"/></h2>
</body>
</html>