<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    double correctAnswer = Double.parseDouble(request.getParameter("correctAnswer"));
    double userAnswer = Double.parseDouble(request.getParameter("userAnswer"));
    int step = Integer.parseInt(request.getParameter("step"));
    boolean isCorrect = Math.abs(correctAnswer - userAnswer) < 0.01;

    // 종료 시간 계산
    long startTime = (Long) session.getAttribute("startTime");
    long endTime = System.currentTimeMillis();
    int elapsedSec = (int)((endTime - startTime) / 1000);  // 초 단위

    // 난이도별 기본 점수
    int baseScore = (step == 1) ? 100 : (step == 2) ? 1000 : 10000;

    int earnedScore = isCorrect ? Math.max(baseScore - elapsedSec, 0) : 0;

    // 누적 점수 저장 (세션)
    Integer totalScore = (Integer) session.getAttribute("totalScore");
    if (totalScore == null) totalScore = 0;
    totalScore += earnedScore;
    session.setAttribute("totalScore", totalScore);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결과</title>
</head>
<body>
<div align = "center">
    <h2><%= isCorrect ? "정답입니다!" : "오답입니다." %></h2>
    <p>정답: <%= correctAnswer %></p>
    <p>입력한 답: <%= userAnswer %></p>
    <p>걸린 시간: <%= elapsedSec %>초</p>
    <p>획득 점수: <%= earnedScore %>점</p>
    <p>총 점수: <%= totalScore %>점</p>

<%
    if (step < 3) {
%>
    <form action="quiz_page.jsp" method="get">
        <input type="hidden" name="step" value="<%= step + 1 %>">
        <input type="submit" value="다음 문제">
    </form>
<%
    } else {
%>
    <p><strong>퀴즈 종료!</strong></p>
    <form action="quiz_result.jsp" method="post">
        <input type="submit" value="최종 결과 확인">
    </form>
<%
    }
%>
</div>
</body>
</html>
