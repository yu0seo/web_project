<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String question = request.getParameter("question");

    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/user";
    String dbUser = "root";
    String dbPass = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, dbUser, dbPass);

        String sql = "SELECT id FROM members WHERE name = ? AND email = ? AND question = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, question);

        rs = pstmt.executeQuery();

        if (rs.next()) {
            String foundId = rs.getString("id");
%>
            <script>
              alert("당신의 아이디는: '<%= foundId %>' 입니다.");
              location.href = "login.jsp";
            </script>
<%
        } else {
%>
            <script>
              alert("입력한 정보와 일치하는 아이디가 없습니다.");
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
        if (rs != null) try { rs.close(); } catch (Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        if (conn != null) try { conn.close(); } catch (Exception e) {}
    }
%>
