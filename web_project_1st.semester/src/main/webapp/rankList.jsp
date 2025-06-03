<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>랭킹</title>
</head>
<body>
    <div align="center">
        <h2>점수 순위</h2>
        <table border="1" cellspacing = "0" cellpadding="10">
            <tr>
                <th>순위</th>
                <th>아이디</th>
                <th>점수</th>
            </tr>
<%
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/user";
    String username = "root";
    String password = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName(driverName);
        conn = DriverManager.getConnection(url, username, password);

        String sql = "SELECT id, score FROM members ORDER BY score DESC";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        int rank = 1;
        while (rs.next()) {
            String id = rs.getString("id");
            int score = rs.getInt("score");
%>
            <tr>
                <td><%= rank++ %></td>
                <td><%= id %></td>
                <td><%= score %></td>
            </tr>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch(Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
        if (conn != null) try { conn.close(); } catch(Exception e) {}
    }
%>
        </table>
        <br>
        <form action="login_success.jsp" method="post">
            <button type="submit">뒤로가기</button>
        </form>
    </div>
</body>
</html>
