<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
	String u_id = request.getParameter("id");
	String u_pw = request.getParameter("pwd");
	String u_name = request.getParameter("name");
	String u_birth = request.getParameter("birth");
	String u_email = request.getParameter("email");
	String u_quest = request.getParameter("question");
	
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
	}
	else{
		out.println("회원 가입 실패");
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