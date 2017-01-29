<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String username = "";
	String password = "";
	request.setCharacterEncoding("utf-8");
	
	username = request.getParameter("username");
	password = request.getParameter("password");
	
	if("admin".equals(username) && "admin".equals(password)) {
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	} else {
		response.sendRedirect("login_failure.jsp");
	}
%>
