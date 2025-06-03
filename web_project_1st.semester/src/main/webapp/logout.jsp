<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 세션 무효화 (모든 세션 정보 삭제)
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그아웃</title>
    <script>
        alert("로그아웃 완료");
        <%
        response.sendRedirect("start_page.jsp"); // 로그인 페이지로 이동
        %>
    </script>
</head>
<body>
</body>
</html>