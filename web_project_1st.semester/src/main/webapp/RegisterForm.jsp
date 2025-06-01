<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<script src = "registerValidation.js"></script>
</head>
<body>
Home > 회원가입 폼 화면 
<hr>
<div align = "center">
<form name = "regForm" method = "post" action = "Check.jsp" onsubmit = "return inputCheck()">
<fieldset style="width:500px">
<legend>회원가입</legend>

	아이디 : <input type = "text" name = "id">
	<h6>아이디는 영문자와 숫자를 포함한 4~16자여야 함</h6>
	비밀번호 : <input type = "password" name = "pwd">
	<h6>비밀번호는 영문자와 숫자를 포함한 4~16자여야 함</h6>
	비밀번호 재입력 : <input type = "password" name = "repwd">
	<h6>이전 비밀번호와 일치해야함.</h6>
	이름 : <input type = "text" name = "name">
	<h6>이름은 한글만 입력해야 하며 두 글자 이상이어야 합니다.</h6>
	이메일 : <input type = "email" name = "email">
	<h6>이메일 작성</h6>
	생년월일 : <input type = "date" name = "birth">
	<h6>생년월일 작성</h6>
	
	<hr>
	비밀번호를 찾을 때 사용할 질문입니다.<br>
	본인이 졸업한 초등학교 이름은 ? : <input type = "text" name = "question">
	<h6>질문 답변 작성</h6>
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