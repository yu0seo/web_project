<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Integer totalScore = (Integer) session.getAttribute("totalScore");
    if (totalScore == null) totalScore = 0;
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
<form action="handle_option.jsp" method="post">
      <button type="submit" name="option" value="reGame">다시하기</button>
      <button type="submit" name="option" value="checkRank">순위확인</button>
    </form>
    </div>
</body>
</html>
