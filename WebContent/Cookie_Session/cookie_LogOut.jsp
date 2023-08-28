<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import= "util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("auth", "", "/", 0)); //쿠키 유효시간을 0으로 줌으로써 로그아웃 처리(쿠키 만료)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3 style="color: orange;font-size: 36px">쿠키 로그아웃 처리합니다.</h3>
</body>
</html>