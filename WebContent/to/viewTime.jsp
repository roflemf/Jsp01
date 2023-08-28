<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <%
	Calendar c= (Calendar)request.getAttribute("time");
    //time 키이름에 저장된 Cal을 다운캐스팅해서 구함

 %>
 현재 시간은 <%=c.get(Calendar.HOUR_OF_DAY) %>시
 		 <%=c.get(Calendar.MINUTE) %>분
 		 <%=c.get(Calendar.SECOND) %>초
 		 
</body>
</html>