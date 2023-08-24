<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
	<h3>html과 jsp 스크립트 코드가 혼합된 것 보다 스크립트 릿으로만 된 것이 더 가독성이 좋다.</h3>
	
	<% int grade = 13; %>
	<% if(grade>10){ %>
		<strong>A학점</strong>
	<%}else if(grade>5){ %>
		<strong>B학점</strong>
	<%} %>
	<hr>
	
	<%
	if(grade > 10){
		out.println("<strong>A학점</strong>");
	}else if(grade>5){
		out.println("<strong>B학점</storng>");
	}
	
	%>
</body>
</html>