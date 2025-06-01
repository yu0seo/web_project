<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<script src = "registerValidation.js"></script>
</head>
<body>
Home > 회원가입 
<hr>
<br><br>
<div align = "center">
<form name = "regForm" method = "post" action = "registerInfoCheck.jsp" onsubmit = "return inputCheck()">
<fieldset style="width:500px">
<legend>회원가입</legend>

	아이디 : <br>
	<input type = "text" name = "id" placeholder = "영문자와 숫자 포함 4~16자" size = "60"><br><br>
	비밀번호 : <br>
	<input type = "password" name = "pwd" placeholder = "영문자와 숫자 포함 4~16자" size = "60"><br><br>
	비밀번호 재입력 : <br>
	<input type = "password" name = "repwd" placeholder = "이전 비밀번호와 동일해야합니다." size = "60"><br><br>
	이름 : <br>
	<input type = "text" name = "name" placeholder = "두 글자 이상의 한글 이름" size = "60"><br><br>
	이메일 : <br>
	<input type = "email" name = "email" placeholder = "이메일 작성" size = "60"><br><br>
	생년월일 : <br>
	<input type = "date" name = "birth"><br><br>
	
	<hr>
	<legend>비밀번호를 찾을 때 사용할 질문입니다.</legend><br>
	본인이 졸업한 초등학교 이름은 ? : <input type = "text" name = "question" placeholder = "한국초등학교">
</fieldset>
</form>
</div>

<div align = "center">
<br>
<input type = "submit" value = "회원가입">&nbsp;&nbsp;
<input type = "reset" value = "다시작성">
</div>

</body>
</html>