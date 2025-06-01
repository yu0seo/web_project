<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "regBean" class = "java_src.login_proc"/>
<jsp:setProperty name = "regBean" property = "*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 정보 확인</title>
</head>
<body>
HOME > 회원가입 > 회원가입 입력 정보 확인
<div align = "center">
<form name = "regForm" method = "post" action = "registerDataSend.jsp">
<fieldset style="width:500px">
<legend align = "center">회원가입 입력 정보 확인</legend>
	<br>
	아이디 : <br>
	<jsp:getProperty name = "regBean" property ="id"/><br><br>
	비밀번호 : <br>
	<jsp:getProperty name = "regBean" property ="pwd"/><br><br>
	이름 : <br>
	<jsp:getProperty name = "regBean" property ="name"/><br><br>
	이메일 : <br>
	<jsp:getProperty name = "regBean" property ="email"/><br><br>
	생년월일 : <br>
	<jsp:getProperty name = "regBean" property ="birth"/><br><br>
	본인이 졸업한 초등학교 이름은 ? : 	<jsp:getProperty name = "regBean" property ="question"/>
</fieldset>
    <!-- hidden으로 값을 다시 넘겨줌 -->
    <input type="hidden" name="id" value="<jsp:getProperty name='regBean' property='id' />" />
    <input type="hidden" name="pwd" value="<jsp:getProperty name='regBean' property='pwd' />" />
    <input type="hidden" name="name" value="<jsp:getProperty name='regBean' property='name' />" />
    <input type="hidden" name="birth" value="<jsp:getProperty name='regBean' property='birth' />" />
    <input type="hidden" name="email" value="<jsp:getProperty name='regBean' property='email' />" />
    <input type="hidden" name="question" value="<jsp:getProperty name = "regBean" property ="question"/>" />
<div align = "center">
<br>
<h4>회원가입 정보를 확인하신 후, 이상이 없으면 [회원가입]버튼을 눌러주세요.</h4>
<input type = "submit" value = "회원가입">&nbsp;&nbsp;
<input type = "reset" value = "다시작성" onclick = "history.back()">
</div>
</form>
</div>


</body>
</html>