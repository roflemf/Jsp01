<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*,net.daum.vo.*, net.daum.dao.*" %>
<%

	BoardDAOImpl bdao= new BoardDAOImpl();
	List<BoardVO> blist= bdao.getBoardList();//게시판 목록 가져옴
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 목록</title>
</head>
<body>
<table border="1">
	<tr>
	 <th colspan="5">게시판 목록보기</th>
	</tr>
	<tr>
		<th>번호</th>
		<th>글제목</th>
		<th>글쓴이</th>
		<th>조회수</th>
		<th>등록날짜</th>
	</tr>
	<%
	 if(blist !=null && blist.size()>0){
		 for(int i=0; i<blist.size(); i++){
			 BoardVO b=blist.get(i);//컬렉션 원소값을 가져옴
	%>
	<tr>
	 <th><%=b.getBno()%></th>
	 <th><a href="board_cont.jsp?bno=<%=b.getBno()%>"><%=b.getBtitle() %></a></th>
	 <%--*.jsp?bno=번호가 주소창에 노출되는get방식으로 전달 --%>
	 <th><%=b.getBname() %></th>
	 <th><%=b.getBhit() %></th>
	 <th><%=b.getBdate() %></th>
	</tr>
	<%}} else{%>
	<tr><th colspan="5">게시판 목록이 없습니다 </th>
	<%} %>
	<tr>
	 <th colspan="5"><input type="button" value="게시판 작성" onclick="location='board25_write.jsp';">
	 </tr>
</table>
</body>
</html>