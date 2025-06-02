<%@ page import="java.util.*, java.text.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    int step = 1;
    if (request.getParameter("step") != null) {
        step = Integer.parseInt(request.getParameter("step"));
    }

    // 문제 난이도에 따른 숫자 범위
    int max = (step == 1) ? 100 : (step == 2) ? 1000 : 10000;

    Random rand = new Random();
    double num1 = Math.round(rand.nextDouble() * max * 100.0) / 100.0;
    double num2 = Math.round(rand.nextDouble() * max * 100.0) / 100.0;

    String operator = rand.nextBoolean() ? "+" : "-";
    double answer = operator.equals("+") ? num1 + num2 : num1 - num2;
    answer = Math.round(answer * 100.0) / 100.0;

    // 시작 시간 저장
    long startTime = System.currentTimeMillis();
    session.setAttribute("startTime", startTime);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문제 <%= step %></title>
</head>
<body>
    <h2>문제 <%= step %>:</h2>
    <p><%= num1 %> <%= operator %> <%= num2 %> = ?</p>

    <form method="post" action="quiz_next_level.jsp">
        <input type="hidden" name="correctAnswer" value="<%= answer %>">
        <input type="hidden" name="step" value="<%= step %>">
        <input type="text" name="userAnswer" required>
        <input type="submit" value="제출">
    </form>
</body>
</html>
