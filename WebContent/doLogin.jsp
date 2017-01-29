<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Login success</h1>

<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("test", "ttt");
%>
<h2>用户名:<%= request.getParameter("name") %></h2>
<h2>密码:<%= request.getParameter("password") %></h2>
<h2>爱好:<%
	String[] favs = request.getParameterValues("fav");
	if(favs != null) {
		for(String fav : favs) {
			out.println(fav);
		}
	}
	
%></h2>
<h2><%= request.getAttribute("test") %></h2>
<h2>MIME:<%= request.getContentType() %></h2>
<h2>协议:<%= request.getProtocol() %></h2>
<h2>IP:<%= request.getRemoteAddr() %></h2>
<h2>IP:<%= request.getServerName() %></h2>
<h2>IP:<%= request.getServerPort() %></h2>
<h2>IP:<%= request.getRealPath("login.jsp") %></h2>
<h2>IP:<%= request.getContextPath() %></h2>


<hr>
<h1>response</h1>
<h2><%=response.getCharacterEncoding() %></h2>
<h2><%
	response.setContentType("text/html;charset=utf-8");

	PrintWriter pw = response.getWriter();
	
	pw.println("前面？？？");
	
	//response.sendRedirect("login.jsp");
	request.getRequestDispatcher("login.jsp").forward(request, response);

%></h2>
</body>
</html>