<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%

	Cookies cookies = new Cookies(request); //쿠키 객체 생성

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>쿠키로 로그인 여부 검증</h2>
 <%
  if(cookies.exists("auth")){
	  
	  out.println("아이디<strong>'" +cookies.getValue("auth") + "'</strong> 로 로그인 상태");
	  //getValue("auth")메서드로 auth쿠키이름에 값 아이디를 구함
	  
  }else{
	  out.println("<span style='color:red;font-weight:bold;'>로그인 되지 않은 상태</span>");
  } 
  %>
 
</body>
</html>