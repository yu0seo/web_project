<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz_option</title>
</head>
<body>
	<%
		String quiz_option = request.getParameter("quiz_option");
	
		if ("reGame".equals(quiz_option)){
			session.setAttribute("totalScore", 0);  // 점수 초기화
			response.sendRedirect("login_success.jsp");
		} else if("checkRank".equals(quiz_option)){
			response.sendRedirect("checkRank.jsp");
		}
		else if("startQuiz".equals(quiz_option)){
			session.setAttribute("totalScore", 0);  // 점수 초기화
			response.sendRedirect("quiz_page.jsp");
		}
	%>
</body>
</html>