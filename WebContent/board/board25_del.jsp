<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*" %>

<%
 int bno = Integer.parseInt(request.getParameter("bno"));//get으로 전달된 번호값 받아서 정수 숫자로 변경해 좌측변수에 저장
 
 BoardDAOImpl bdao=new BoardDAOImpl();
 int re = bdao.delBoard(bno);//번호를 기준으로 삭제후 성공한 레코드 행의 개수 반환
 
 if(re==1){
	 out.println("<script>");
	 out.println("alert('게시물 삭제에 성공했습니다!');");
	 out.println("location='board_list.jsp';");
	 out.println("</script>");
 }
%>
