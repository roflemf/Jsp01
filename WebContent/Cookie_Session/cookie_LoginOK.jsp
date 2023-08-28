<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password=request.getParameter("pass");

	if(id.equals(password)){//아이디와 비번이 같을 때 로그인 인증 성공한 것으로 판단
		response.addCookie(Cookies.createCookie("auth", id, "/", -1));
												//쿠키이름("권한"), 값(id), 경로(root), 쿠키 유지시간(maxAge -1; 브라우저 종료시 쿠키삭제)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
 <h2>로그인에 성공했습니다!</h2>
 
</body>
</html>
<%
	}else{//로그인 실패시
%>
  <script>
  	alert('로그인에 실패 했습니다!')
  	history.back();//history; 이전 주소 정보 담고 있는 객체
  				   //back(); 뒤로 한칸 이동(이전 주소로 이동) = go(-1)
  </script>

<% } %>