<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root"; 
	String password = "";

	String sortOrder = request.getParameter("sort");
	if (sortOrder == null || (!sortOrder.equals("asc") && !sortOrder.equals("desc"))) {
		sortOrder = "";  //데이터베이스에 데이터가 들어간 순서
	}

	String searchId = request.getParameter("search");
	if (searchId == null) searchId = "";

	Connection conn = null;
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);  

	// SQL 쿼리 작성
	String sql = "SELECT id, name, birthday, email, question, score FROM members";
	if (!searchId.trim().isEmpty()) {
		sql += " WHERE id LIKE ?";
	}
	sql += " ORDER BY score " + sortOrder.toUpperCase();

	PreparedStatement ps = conn.prepareStatement(sql);
	if (!searchId.trim().isEmpty()) {
		ps.setString(1, "%" + searchId + "%");
	}
	ResultSet rs = ps.executeQuery();
%>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 기능 페이지</title>
</head>
<body>
	<div align="center">
		<br>
		<font size=6>회원 정보</font><br><br>

		<!-- 검색 및 정렬 선택 폼 -->
		<form method="get" action="">
			아이디 검색:
			<input type="text" name="search" value="<%= searchId %>" />
			정렬 기준:
			<select name="sort">
				<option value="desc" <%= "desc".equals(sortOrder) ? "selected" : "" %>>점수 높은 순</option>
				<option value="asc" <%= "asc".equals(sortOrder) ? "selected" : "" %>>점수 낮은 순</option>
			</select>
			<button type="submit">검색</button>
		</form>
		<br>

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
			</tr>
<%
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
		count++;	
	}
	rs.close();
	ps.close();
	conn.close();
%>
		</table>
		<br><br>
		<form action="" method="post">
			<button type="submit" formaction="login_success.jsp">취소 하기</button>
		</form>
	</div>
</body>
</html>
