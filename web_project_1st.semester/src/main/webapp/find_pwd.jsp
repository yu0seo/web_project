<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
  <div align="center">
  <br><br><br><br><br><br>
    <h2>비밀번호 찾기</h2>
    <form action="find_id_pwd.jsp" method="post">
      <p>이름<input type="text" name="name" required></p>
      <p>아이디: <input type="text" name="id" required></p>
      <p>보안질문<br>
      내가 졸업한 초등학교 이름은 ? : <input type="text" name="question" required></p>
      <button type="submit" name = "idpwdf" value = "pwdf">비밀번호 찾기</button>
    </form>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>
   	<div align="center">아이디를 잊으셨나요?
   	   	<form action ="find_id.jsp" method ="post">
   	<button type ="submit">아이디 찾기</button>
   	</form></div>
   	
  </div>
</body>
</html>
