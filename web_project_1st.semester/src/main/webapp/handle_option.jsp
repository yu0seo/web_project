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
		String quiz_option = request.getParameter("quiz_option");

		if ("register".equals(option)){
			response.sendRedirect("RegisterForm.jsp");
		} else if("find_login_info".equals(option)){
			response.sendRedirect("find_pwd.jsp");
		} else if("login".equals(option)){
			response.sendRedirect("login.jsp");
		} else if("my_info".equals(option)){
			response.sendRedirect("my_info.jsp");
		} else if("del_proc".equals(option)){
			response.sendRedirect("del_proc.jsp");
		} else if("logout".equals(option)){
			response.sendRedirect("logout.jsp");
		} else if("find_pwd".equals(option)){
			response.sendRedirect("find_pwd.jsp");
		} else if ("reGame".equals(quiz_option)){
			session.setAttribute("totalScore", 0);  // 점수 초기화
			response.sendRedirect("login_success.jsp");
		} else if("checkRank".equals(quiz_option)){
			response.sendRedirect("rankList.jsp");
		} else if("startQuiz".equals(quiz_option)){
			session.setAttribute("totalScore", 0);  // 점수 초기화
			response.sendRedirect("quiz_page.jsp");
		}
%>

</body>
</html>