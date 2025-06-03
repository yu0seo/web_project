<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id = "login_Bean" class = "java_src.login_proc" scope="session"/>
<jsp:setProperty name = "login_Bean" property = "*" />
<!DOCTYPE html>
<% 
	String user_id = login_Bean.getId();

	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root"; 
	String password = "123456";
	Connection conn = null;

	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);

	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT id, name, birthday, email, question, score FROM members WHERE id = '" + user_id + "'");
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<div align="center">
<br><br><br><br><br><br><br><br>
<font size=5> 정말로 회원 탈퇴를 원하시면 아이디와 비밀번호를 입력해주세요.</font>
<br><br>
<fieldset style="width:400px">
<br>
	<form action="handle_option.jsp" method="post">
	아이디
    <input type="text" name="id" required placeholder="아이디 입력">
    <br><br>
    비밀번호
    <input type="password" name="pwd" required placeholder="비밀번호 입력">
    <br><br>
    <button type="submit" name="option" value="del_check">회원 탈퇴</button>
    </form>
    <form action="handle_option.jsp" method="post">
    <button type="submit" name="option" value="my_info">취소 하기</button>
    </form>
</fieldset>
</div>

</body>
</html>