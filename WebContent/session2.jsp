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
	String[] ss = session.getValueNames();
	for (String s : ss) {
		out.println(session.getAttribute(s));
	}
%>

<h2><%=application.getAttribute("app1") %></h2>
<h2><%=application.getServerInfo() %></h2>

<h2><%=page.toString() %></h2>

<%pageContext.include("inc1.jsp"); %>
</body>
</html>