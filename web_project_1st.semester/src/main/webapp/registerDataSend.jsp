<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<jsp:useBean id = "login_Bean" class = "java_src.login_proc"/>
<jsp:setProperty name = "login_Bean" property = "*" />
<%
	request.setCharacterEncoding("UTF-8");
	String u_id = login_Bean.getId();
	String u_pw = login_Bean.getPwd();
	String u_name = login_Bean.getName();
	String u_email = login_Bean.getEmail();
	String u_birth = login_Bean.getBirth();
	String u_quest = login_Bean.getQuestion();
	
	String sql = "INSERT INTO members(id, pwd, name, email, birthday, question) VALUES";
	sql += "('" + u_id + "','" + u_pw + "','" + u_name + "','" + u_email + "','" + u_birth + "','" + u_quest + "')";

	
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root";
	String password = "";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url,username,password);
	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		out.println("회원 가입 성공");
		response.sendRedirect("login.jsp");
	}
	else{
		out.println("회원 가입 실패");
		response.sendRedirect("RegisterForm.jsp");
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>