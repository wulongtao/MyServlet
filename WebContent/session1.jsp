<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Session内置对象</h1>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	String time = sdf.format(new Date(session.getCreationTime()));
%>
<h2><%=time %></h2>
<h2><%=session.getId() %></h2>
<h2><%=time %></h2>

<%
	session.setAttribute("username", "abc");
	session.setAttribute("nick", "xiaoxiaohei");
	
	application.setAttribute("app1", "myApp1");
	application.setAttribute("app2", "myApp2");
	application.setAttribute("app2", "myApp2");
%>

<a href="session2.jsp">跳转</a>
</body>
</html>