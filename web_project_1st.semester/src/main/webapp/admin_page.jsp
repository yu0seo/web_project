<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root"; 
	String password = "";
	Connection conn = null;

	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT id, name, birthday, email, question, score FROM members");	
%>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 기능 페이지</title>
</head>
<body>
	<div align="center">
	<br>
	<font size=6>회원 정보</font>test<br>
	<table border="1" width="1000" cellspacing="0" cellpadding="3">
	<tr>
		<th>순서</th>
		<th>id</th>
		<th>이름</th>
		<th>생일</th>
		<th>이메일</th>
		<th>비밀번호 찾기 질문</th>
		<th>점수</th>
		<th>삭제</th>
	<tr>
<%
	String str = "";
	int count = 1;
	
	while(rs.next()){
		out.print("<tr>" + "<td>" + count + "<td>" + rs.getString("id") + "<td>" + rs.getString("name")
		+ "<td>" + rs.getString("birthday") + "<td>" + rs.getString("email") + "<td>"
		+ rs.getString("question") + "<td>" + rs.getString("score"));
%>
		<td>
		<form action="admin_del_proc.jsp" method="post">
			<button type="submit" name="del_id" value="<%= rs.getString("id") %>">삭제</button>
		</form>
	
<%
		count ++;	
	}
	out.print(str);
	
	rs.close();
	sm.close();
	conn.close();
%>
	</table>
	<br><br>
	<form action="" method="post">
		<button type="submit" formaction="login_success.jsp" >취소 하기</button>
	</form>
	</div>
</body>
</html>