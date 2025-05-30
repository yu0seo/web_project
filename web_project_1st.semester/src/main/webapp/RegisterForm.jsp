<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src = "script.js"></script>

</head>
<body bgcolor = "black">
Home > 회원가입 웹사이트
<hr>
			<form name = "regForm" method = "post" action = "Check.jsp" onsubmit = "return inputCheck()">
<table width = "500" align = "center" cellspacing = "0" cellpadding = "5">
<tr>
	<td align ="center" valign = "middle" bgcolor = "white">
		<table border = "1" cellspacing = "0" cellpadding = "2" align = "center">
				<tr align = "center" bgcolor = "#996600">
					<td colspan = "3"><font color = "white"><b>회원가입</b></font></td>
				</tr>
<tr>
	<td width ="100">아이디</td>
	<td width = "200"><input name = "id" size =".15"></td>
	<td width = "200">아이디 입력</td>
</tr>

<tr>
	<td>비밀번호</td>
	<td><input type = "password" name = "pwd" size ="15"></td>
	<td>비밀번호는 4~16자의 영문자와 숫자를 포함해야 합니다.</td>
</tr>
<tr>
	<td>비밀번호</td>
	<td><input type = "password" name = "repwd" size ="15"></td>
	<td>비밀번호 재입력.</td>
</tr>
<tr>
	<td>이름</td>
	<td><input name = "name" size = "15"></td>
	<td>이름은 한글만 입력해야 하며 두 글자 이상이어야 합니다.</td>
</tr>

<tr>
	<td>생년월일</td>
	<td><input type = "date" name = "birthday" size ="27"></td>
	<td>생년월일 작성</td>
</tr>

<tr>
	<td>이메일</td>
	<td><input type = "email" name = "email" size ="20"></td>
	<td>이메일 작성</td>
</tr>

<tr>
	<td colspan = "3" align ="center">
		<input type = "submit" value = "회원가입" >&nbsp;
		<input type = "reset" value = "다시작성">
	</td>
</tr>


</table>
</td>
</tr>
</table>
</form>
</body>
</html>