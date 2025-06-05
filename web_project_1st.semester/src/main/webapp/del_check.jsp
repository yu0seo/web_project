<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="login_Bean" class="java_src.login_proc" scope="session" />


<%
    request.setCharacterEncoding("UTF-8");
    String inputId = request.getParameter("id");
    String inputPw = request.getParameter("pwd");

    String sessionId = login_Bean.getId();
    
    String driverName = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/user";
    String username = "root";
    String password = "";
    Connection conn = null;

    Class.forName(driverName);
    conn = DriverManager.getConnection(url, username, password);

    Statement sm = conn.createStatement();
    String query = "SELECT * FROM members WHERE id = '" + inputId + "' AND pwd = '" + inputPw + "'";
    ResultSet rs = sm.executeQuery(query);

    if (rs.next()) {
        if (inputId.equals(sessionId)) {
            // 삭제 쿼리 수행
            String deleteQuery = "DELETE FROM members WHERE id = '" + inputId + "'";
            int result = sm.executeUpdate(deleteQuery);

            if (result > 0) {
%>
                <script>
                    alert("회원 삭제가 완료되었습니다.");
					<%response.sendRedirect("start_page.jsp");%>
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
        } else {
%>
            <script>
                alert("세션 ID와 입력한 ID가 다릅니다.");
                history.back();
            </script>
<%
        }
    } else {
%>
        <script>
            alert("아이디 또는 비밀번호가 틀렸습니다.");
            history.back();
        </script>
<%
    }
    rs.close();
    sm.close();
    conn.close();
%>
