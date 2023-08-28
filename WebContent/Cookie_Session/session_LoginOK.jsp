<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); //method=post로 전달되는 한글 안깨지게
	
	String id= request.getParameter("login_id");
	String pass= request.getParameter("login_pwd");
	
	if(id.equals(pass)){//아이디 = 비번 일 경우 로그인 인증으로 판단
			session.setAttribute("id", id); //세션아이디 키이름에 아이디 저장


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>세션 로그인에 성공했습니다</h2>
</body>
</html>
<%
	}else{
		out.println("<script>");
		out.println("alert('로그인에 실패했습니다');");
		out.println("history.go(-1);");//뒤로 한칸 이동(이전 주소로 이동) = history.back()
		out.println("</script>");
		}
		
%>