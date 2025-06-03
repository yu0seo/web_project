<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "login_Bean" class = "java_src.login_proc" scope="session"/>
<!-- scope="session"을 통해login_process.jsp에서 자바빈즈 값을 세션이 담아 받아 옴 -->
<jsp:setProperty name = "login_Bean" property = "*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="right">
<table>
  <tr>
<% 
	String user_id = login_Bean.getId();
	String user_pwd = login_Bean.getPwd();
	if ("root".equals(user_id) && "root1234".equals(user_pwd)){
%>
  <td>
	<form action="admin_page.jsp" method="post">
	  <div>
	    <button type="submit" style="width: 150px; height: 50px;">관리자 메뉴로 이동</button>
	  </div>
	</form>
  </td>
<%	
	}
%>
  <td>
	<form action="handle_option.jsp" method="post">
	    <button type="submit" name="option" value="my_info" style="width: 150px; height: 50px;">내 정보</button>
	    <button type="submit" name="option" value="logout" style="width: 150px; height: 50px;">로그아웃</button>
	</form>
  </td>
  </tr>
 </table>
</div>
<div align = "center">
  	<br><br><br><br><br><br><br><br>
    <form action="quiz_option.jsp" method="post">
    <font size=7>암산 Quiz</font>
      <div>
        <button type="submit" name="quiz_option" value="startQuiz" style="width: 150px; height: 50px;">게임시작</button>
        <button type="submit" name="quiz_option" value="checkRank"style="width: 150px; height: 50px;">순위확인</button>
      </div>
    </form>
  </div>
</body>
</html>