<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 실습</title>
</head>
<body>
 <%
   int number=10;
 %>
 <%@ include file="included2.jspf" %> <%--.jspf 확장자; 소스코드 조각파일 (잘 사용 X .jsp 추천)--%>
 
 공통변수 dataFolder : <%=dataFolder %>
</body>
</html>