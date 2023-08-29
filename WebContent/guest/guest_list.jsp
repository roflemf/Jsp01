<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*,net.daum.vo.*, net.daum.dao.*" %>
<%

	Guest25DAOImpl gdao = new Guest25DAOImpl();
	List<GuestVO> glist = gdao.getGuList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Guest 게시판 목록</title>
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
		<th>글내용</th>
		<th>등록날짜</th>
	</tr>
	<%
	 if(glist !=null && glist.size()>0){
		 for(int i=0; i<glist.size(); i++){
			 GuestVO g=glist.get(i);//컬렉션 원소값을 가져옴
	%>
	<tr>
	 <th><%=g.getGno()%></th>
	 <th><a href="board_cont.jsp?gno=<%=g.getGno()%>"><%=g.getGtitle() %></a></th>
	 <%--*.jsp?bno=번호가 주소창에 노출되는get방식으로 전달 --%>
	 <th><%=g.getGname() %></th>
	 <th><%=g.getGcont() %></th>
	 <th><%=g.getGdate() %></th>
	</tr>
	<%}} else{%>
	<tr><th colspan="5">게시판 목록이 없습니다 </th>
	<%} %>
	<tr>
	 <th colspan="5"><input type="button" value="게시판 작성" onclick="location='guest_write.jsp';">
	 </tr>
</table>

</body>
</html>