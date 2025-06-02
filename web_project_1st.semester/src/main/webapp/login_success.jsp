<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "login_Bean" class = "java_src.login_proc"/>
<jsp:setProperty name = "login_Bean" property = "*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="right">
<br>

</div>
<div align = "center">
  	<br><br><br><br><br><br><br><br><br><br>
    <form action="quiz_option.jsp" method="post">
    <font size=7>암산 Quiz</font>
      <div>
        <button type="submit" name="quiz_option" value="reGame" style="width: 150px; height: 50px;">게임시작</button>
        <button type="submit" name="quiz_option" value="checkRank"style="width: 150px; height: 50px;">순위확인</button>
      </div>
    </form>
  </div>
</body>
</html>