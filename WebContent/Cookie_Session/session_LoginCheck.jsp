<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	String id=  (String)session.getAttribute("id"); //세션 아이디를 구함
	boolean re=(id==null)?false:true;
	           //(id!=null)?true:false;도 가능
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h2>세션 로그인 여부 검증</h2>
<% if(re==true){//==true는 생략가능%>
	아이디<strong>"<%=id %>"</strong> 님 로그인 된 상태
<%}else{ %>
   <span style="color:red;">로그인 하지 않은 상태</span>
<%} %>
</body>
</html>