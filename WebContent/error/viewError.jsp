<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page  isErrorPage="true" %>
<%--isErrorPage="true"로 지정해서 에러 페이지가 된다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생</title>
</head>
<body>
 요청 처리과정에서 에러가 발생했습니다.<br>
 빠른 시간 내에 문제를 해결하도록 하겠습니다.
 <hr>
 에러 타입 : <%=exception.getClass().getName() %> <br>
 에러 메시지 : <%=exception.getMessage() %>
 <hr>
</body>
</html>