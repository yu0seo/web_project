<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String userId = (String) session.getAttribute("userId");
    Integer totalScore = (Integer) session.getAttribute("totalScore");
    if (totalScore == null) totalScore = 0;
    
    

    String url = "jdbc:mysql://localhost:3306/user";
    String username = "root";
    String password = "";
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // 기존 점수 조회
        String selectSql = "SELECT score FROM members WHERE id = ?";
        pstmt = conn.prepareStatement(selectSql);
        pstmt.setString(1, userId);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            int currentScore = rs.getInt("score");

            if (totalScore > currentScore) {
                // 더 높은 점수면 업데이트
                String updateSql = "UPDATE members SET score = ? WHERE id = ?";
                pstmt = conn.prepareStatement(updateSql);
                pstmt.setInt(1, totalScore);
                pstmt.setString(2, userId);
                pstmt.executeUpdate();
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        if (conn != null) try { conn.close(); } catch (Exception e) {}
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>최종 결과</title>
</head>
<body>
<div align = "center">
    <h2>퀴즈 완료 🎉</h2>
    <p>당신의 총 점수는 <strong><%= totalScore %></strong>점입니다!</p>
<form class="option-form" action="quiz_option.jsp" method="post">
      <button type="submit" name="quiz_option" value="reGame">다시하기</button>
      <button type="submit" name="quiz_option" value="checkRank">순위확인</button>
    </form>
    </div>
</body>
</html>
