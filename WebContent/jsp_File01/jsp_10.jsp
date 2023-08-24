<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web.xml에 설정한 404에러를 확인하려면 주소창의 파일명을 jsp_100.jsp로 실행(파일명 잘못입력)</title>
</head>
<body>
<%
	String name = "홍길동";
	out.println("이름 : " + name + "<hr>");
%>
<!-- 주소창에서 http://localhost:7996/Jsp01/jsp_File01/jsp_100.jsp 경로를 바꿔서 입력시 404 에러 페이지 확인 가능 -->
</body>
</html>