<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "net.daum.vo.*, net.daum.dao.*" %> <%--복수개의 패키지 import --%>
<%
	int bno=Integer.parseInt(request.getParameter("bno")); //get으로 전달된 번호값을 정수숫자로 변경해서 저장
	BoardDAOImpl bdao=new BoardDAOImpl();
	bdao.updateHit(bno);//조회수 증가
	
	BoardVO bc=bdao.getBoardCont(bno); //번호에 해당하는 레코드를 가져옴
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
</head>
<body>
 <table border="1">
  <tr>
   <th colspan="2">게시판 내용보기</th>
  </tr>
  <tr>
   <th>제목</th> <td><%=bc.getBtitle() %></td>
  </tr>
  <tr>
   <th>내용</th> <td><%=bc.getBcont().replace("\n","<br>") %></td>
   <!-- textarea에서 엔터키를 친 부분(\n)을 줄바꿈(<br>)해준다. -->
  </tr>
  <tr>
   <th>조회수</th> <td><%=bc.getBhit() %></td>
  </tr>
  <tr>
   <th colspan="2">
   <input type="button" value="수정" onclick="location='board25_edit.jsp?bno=<%=bc.getBno()%>';">
   <input type="button" value="삭제" onclick="location='board25_del.jsp?bno=<%=bc.getBno()%>';">
   <!-- board_del.jsp?bno= 번호를 주소창에 노출되는 get방식으로 전달 -->
   <input type="button" value="목록" onclick="location='board_list.jsp';">
  </tr>
 </table>
</body>
</html>