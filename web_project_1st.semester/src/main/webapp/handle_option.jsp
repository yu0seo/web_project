<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>handle_option</title>
</head>
<body>
<%
		String option = request.getParameter("option");
	
		if ("register".equals(option)){
			response.sendRedirect("RegisterForm.jsp");
		} else if("find_login_info".equals(option)){
			response.sendRedirect("find_login_info.jsp");
		} else if("login".equals(option)){
			response.sendRedirect("login.jsp");
		} else if("my_info".equals(option)){
			response.sendRedirect("my_info.jsp");
		} else if("del_check".equals(option)){
			response.sendRedirect("del_check.jsp");
		} else if("logout".equals(option)){
			response.sendRedirect("logout.jsp");
		}
%>
</body>
</html>