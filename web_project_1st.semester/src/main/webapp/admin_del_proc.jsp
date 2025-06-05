<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<% 
	String u_id = request.getParameter("del_id");

	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root"; 
	String password = "";
	Connection conn = null;

	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);

	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT id, name, birthday, email, question, score FROM members WHERE id = '" + u_id + "'");
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<div align="center">
<br><br><br><br><br><br><br><br>
<font size=5> 정말로 <%= u_id %> 회원을 삭제 시키려면 관리자 아이디와 비밀번호를 입력해주세요.</font>
<br><br>
<fieldset style="width:400px">
<br>
	<form action="admin_del_check.jsp" method="post">
	<input type="hidden" name="del_id" value="<%=u_id%>">
	아이디
    <input type="text" name="id" placeholder="아이디 입력">
    <br><br>
    비밀번호
    <input type="password" name="pwd" placeholder="비밀번호 입력">
    <br><br>
    <button type="submit">회원 탈퇴</button>
    <button type="submit" formaction="admin_page.jsp" >취소 하기</button>
  	</form>
</fieldset>
</div>

</body>
</html>