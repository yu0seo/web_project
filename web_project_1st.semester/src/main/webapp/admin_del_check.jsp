<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String inputId = request.getParameter("id");
    String inputPw = request.getParameter("pwd");
    String u_id = request.getParameter("del_id");

    // 관리자 인증
    if ("root".equals(inputId) && "root1234".equals(inputPw)) {

        String driverName = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/user";
        String username = "root";
        String password = "";
        Connection conn = null;

        Class.forName(driverName);
        conn = DriverManager.getConnection(url, username, password);

        Statement sm = conn.createStatement();
        String deleteQuery = "DELETE FROM members WHERE id = '" + u_id + "'";
        int result = sm.executeUpdate(deleteQuery);

        if (result > 0) {
%>
            <script>
                alert("회원 삭제가 완료되었습니다.");
                <%response.sendRedirect("admin_page.jsp");%>
            </script>
<%
        } else {
%>
            <script>
                alert("삭제 실패. 다시 시도하세요.");
                history.back();
            </script>
<%
        }

        sm.close();
        conn.close();

    } else {
%>
        <script>
            alert("관리자 인증 실패: 아이디 또는 비밀번호가 올바르지 않습니다.");
            history.back();
        </script>
<%
    }
%>
