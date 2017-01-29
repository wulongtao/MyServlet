<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String s = printResult();
%>

<%!
	String printResult() {
		StringBuilder sb = new StringBuilder();
		for(int i = 1; i <= 9; i++) {
			for(int j = 1; j <= i; j++) {
				int res = i * j;
				sb.append(i + "*" + j + "=" + res + "\t");			
			}
			sb.append("\n");
		}
		
		String s = sb.toString();
		return s;
	}
%>

<h1>result</h1>
<pre><%= s%></pre>


</body>
</html>