<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br>
  <div align = "center">
  <div>
  <font size=7>8조(유영서, 박사원) </font>
  </div>
  <div>
  <font size=7>간단한 퀴즈 랭킹 홈페이지</font>
  </div>
    <form class="option-form" action="handle_option.jsp" method="post">
      <button type="submit" name="option" value="login" style="width: 150px; height: 50px;">로그인</button>
      <button type="submit" name="option" value="register" style="width: 150px; height: 50px;">회원가입</button>
      <button type="submit" name="option" value="find_login_info" style="width: 150px; height: 50px;">아이디/비밀번호 찾기</button>
    </form>
  </div>
</body>
</html>
