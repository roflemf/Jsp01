<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*" %>
<%

request.setCharacterEncoding("UTF-8"); //post로 전달되는 한글 안깨지게

%>
<jsp:useBean id="guest" class="net.daum.vo.GuestVO" />
<%--jsp:useBean 액션태그로  BoardVO 빈클래스의 객체명 board생성--%>
<jsp:setProperty name="guest" property="*" />
<%--네임 파라미터 이름과 빈클래스 변수명이 같으면 property 속성값 *로 처리해도 bno,bname,btitle,bcont값이 board객체에 저장되어 있다. --%>

<% 
	Guest25DAOImpl gdao = new Guest25DAOImpl();
	int re = gdao.insertGuest(guest); 
	
	if(re ==1){
		out.println("<script>");
		out.println("alert('게시판 저장에 성공했습니다!');");
		out.println("location='guest_list.jsp';");
		out.println("</script>");
	}else {
		out.println("<script>");
		out.println("alert('게시물 저장 실패');");
		out.println("location='guest_list.jsp';");
		out.println("</script>");
	}
	


%>
