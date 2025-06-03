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
	String password = "";
	Connection conn = null;

	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);

	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT id, name, birthday, email, question, score FROM members WHERE id = '" + user_id + "'");
	
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<br><br><br><br><br><br><br>
<fieldset style="width:500px">
<legend>내 정보</legend>
<%
	if (rs.next()) {
%>
		<p>ID: <%= rs.getString("id") %></p>
		<p>이름: <%= rs.getString("name") %></p>
		<p>생일: <%= rs.getString("birthday") %></p>
		<p>이메일: <%= rs.getString("email") %></p>
		<p>보안질문: <%= rs.getString("question") %></p>
		<p>점수: <%= rs.getInt("score") %></p>
		<form action="handle_option.jsp" method="post">
    		<button type="submit" name="option" value="del_proc">회원 탈퇴</button>
    		<button type="button" onclick="history.back()">뒤로 가기</button>
    	</form>
<%
	} else {
%>
		<p>사용자 정보를 찾을 수 없습니다.</p>
<%
	}
	if (rs != null) rs.close();
	if (sm != null) sm.close();
	if (conn != null) conn.close();
%>
</fieldset>
</div>	
<body>
</html>