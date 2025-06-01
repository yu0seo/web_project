<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
  .center-container {
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    min-height: 80vh
  }

  .login-form, .optionform {
    text-align: center;
    margin: 10px 0;
  }

  .logo-text{
  	font-size: 32px;
  	font-weight: bold;
  	margin-bottom: 30px;
  }

  input {
    width: 200px;
    padding: 5px;
    margin-top: 5px;
  }

  button {
    margin: 5px;
    padding: 16px 30px;
  }
</style>
</head>
<body>
  <div class="center-container">
  <div class="logo-text">14조(유영서, 박사원)</div>
  <div class="logo-text">간단한 퀴즈 랭킹 홈페이지</div>
    <form class="option-form" action="handle_option.jsp" method="post">
      <button type="submit" name="option" value="login">로그인</button>
      <button type="submit" name="option" value="register">회원가입</button>
      <button type="submit" name="option" value="find_login_info">아이디/비밀번호 찾기</button>
    </form>
  </div>
</body>
</html>