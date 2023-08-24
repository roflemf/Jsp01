<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	String id = request.getParameter("id"); //get으로 전달된 아이디값을 받는다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
	<h2>관리자 로그인 이후 메인페이지</h2>
	<strong><%=id%>님 </strong>로그인을 환영합니다.
</body>
</html>