<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="net.daum.dao.*" %>

<%

	request.setCharacterEncoding("UTF-8");//Post 로 전달되는 한글 안깨지게
%>
<jsp:useBean id="board" class="net.daum.vo.BoardVO" />
<%--jsp:useBean 액션태그로  BoardVO 빈클래스의 객체명 board생성--%>
<jsp:setProperty name="board" property="*" />
<%--네임 파라미터 이름과 빈클래스 변수명이 같으면 property 속성값 *로 처리해도 bno,bname,btitle,bcont값이 board객체에 저장되어 있다. --%>

<%
	BoardDAOImpl bdao = new BoardDAOImpl();
	int re=bdao.editBoard(board); //번호를 기준으로 글쓴이,글제목,글내용을 수정

		if(re==1){
			out.println("<script>");
			out.println("alert('게시물 수정에 성공!');");
			out.println("location='board_list.jsp';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('게시물 수정 실패');");
			out.println("location='board_list.jsp';");
			out.println("</script>");
		}

%>


