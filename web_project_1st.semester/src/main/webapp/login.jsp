<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
  <div align = "center">
  	<br><br><br><br><br><br><br><br>
    <h2>로그인</h2>
    <form action="login_process.jsp" method="post">
      <div>
        아이디
        <input type="text" name="id" placeholder="아이디 입력">
      </div>
      <br>
      <div>
        비밀번호
        <input type="password" name="pwd" placeholder="비밀번호 입력">
      </div>
      <br>
      <button type="submit">로그인</button>
    </form>
    <br><br>
      <form action="handle_option.jsp" method="post">
        <button type="submit" name="option" value="go_to_start">처음 화면으로 돌아가기</button>
      </form>
  </div>
</body>
</html>
