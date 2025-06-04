<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    
    // 비번 찾기용
    String question = request.getParameter("question");
    String id = request.getParameter("id");

    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/user";
    String dbUser = "root";
    String dbPass = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String check = request.getParameter("idpwdf"); // 버튼 value

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, dbUser, dbPass);

        if ("idf".equals(check)) {
            // 아이디 찾기
            String sql = "SELECT id FROM members WHERE name = ? AND email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String found = rs.getString("id");
%>
<div align = "center">
			당신의 아이디는 <h3><%=found %></h3>입니다.
			<form action="handle_option.jsp" method="post">
				<button type="submit" name="option" value="login">로그인 하기</button>
				<button type="submit" name="option" value="find_pwd">비밀번호 찾기</button>
			</form>
</div>
<%
            } else {
%>
                <script>
                  alert("입력한 정보와 일치하는 아이디가 없습니다.");
                  history.back();
                </script>
<%
            }
        } else if ("pwdf".equals(check)) {
            // 비밀번호 찾기
            String psql = "SELECT pwd FROM members WHERE id = ? AND name = ? AND question = ?";
            pstmt = conn.prepareStatement(psql);
            pstmt.setString(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, question);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String found = rs.getString("pwd");
%>
<div align = "center">
			당신의 비밀번호는 <h3><%=found %></h3>입니다.
			<form name="option-form" action="handle_option.jsp" method="post">
      			<button type="submit" name="option" value="login">로그인 하기</button>
      			<button type="submit" name="option" value="find_id">아이디 찾기</button>
    		</form>
    		
</div>
<%
            } else {
%>
                <script>
                  alert("입력한 정보와 일치하는 비밀번호가 없습니다.");
                  history.back();
                </script>
<%
            }
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
        if (rs != null) try { rs.close(); } catch (Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        if (conn != null) try { conn.close(); } catch (Exception e) {}
    }
%>
