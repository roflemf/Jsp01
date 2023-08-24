<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	String id= request.getParameter("id2"); 
	//쿼리 스트링 방식:
	//jsp_07.jsp?id2=아이디 형태의 주소창에 노출되는 get 방식으로 전달해야함
	
	if(id != null && id.equals("admin")){
		response.sendRedirect("index.jsp?id=" + id); //?id=id  id=jsp변수     ?id= 아이디를 get으로 전달
	}else{
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> response jsp 내장객체 하위의 sendRedirect() 메서드</title>
</head>
<body>
	<span style="font-size:28px; color:red; font-weight:bolder;">
	잘못된 아이디 입니다.
	</span>
</body>
</html>