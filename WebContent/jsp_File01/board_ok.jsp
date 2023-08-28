<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//post로 전송되는 한글 깨지지 않게 ; utf-8대소문자 구분 X
	
	String title= request.getParameter("title");
	String cont = request.getParameter("content");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<table border="1">
 <tr><th colspan="2">게시물 내용<br>(받아온 결과값 확인)</th></tr>
 <tr>
 <th>제목</th> <td><%=title %></td>
 </tr>
 <tr>
 <th>내용</th> <td><%=cont %></td>
 </tr>
 <tr>
 <th colspan="2">
 <input type="button" value="입력" onclick="location='jsp_19_boardWrite.jsp';">
 </th>
 </tr>
</table>
</body>
</html>