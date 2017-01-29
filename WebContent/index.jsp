<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>大家0好</h1>

<!-- www -->
<%-- aaa --%>

<%
	//www
	out.println("哈哈哈哈" + Math.random()*5);


	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
	String s = sdf.format(new Date());
	
%>


<%!
	//String s = "sssss";
	int add(int x, int y) {
		return x+y;
	}

%>

<%= s%>
<%= add(5, 6) %>


<hr>


</body>
</html>