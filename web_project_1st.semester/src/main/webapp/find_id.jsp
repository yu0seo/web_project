<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
  <div align="center">
  <br><br><br><br><br><br>
    <h2>아이디 찾기</h2>
    <form action="find_id_pwd.jsp" method="post">
      <p>이름: <input type="text" name="name" required></p>
      <p>이메일: <input type="email" name="email" required></p>
      <button type="submit" name = "idpwdf" value ="idf">아이디 찾기</button>
    </form>
  </div>
</body>
</html>
