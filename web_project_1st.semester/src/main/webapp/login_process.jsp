<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="login_Bean" class="java_src.login_proc"/>
<jsp:setProperty name="login_Bean" property="*"/>
<%
	String id = login_Bean.getId();
	String pwd = login_Bean.getPwd();

	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user";
	String username = "root";
	String password = "123456";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        conn = DriverManager.getConnection(url, username, password);
	
	        String sql = "SELECT * FROM members WHERE id = ? AND pwd = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, id);
	        pstmt.setString(2, pwd);
	
	        rs = pstmt.executeQuery();
	
	        if (rs.next()) { 
	%>
				<script>            
	            alert("로그인 성공!");
	            <%
				response.sendRedirect("login_success.jsp");
				%>
	            </script>
	<%
	        } else {
	%>
	            <script>
	                alert("아이디 또는 비밀번호가 일치하지 않습니다.");
	                history.back();
	            </script>
	<%
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	%>
	        <script>
	            alert("에러 발생: <%= e.getMessage() %>");
	            history.back();
	        </script>
	<%
	    } finally {
	        try { if (rs != null) rs.close(); } catch (Exception e) {}
	        try { if (pstmt != null) pstmt.close(); } catch (Exception e) {}
	        try { if (conn != null) conn.close(); } catch (Exception e) {}
	    }
%>
</body>
</html>