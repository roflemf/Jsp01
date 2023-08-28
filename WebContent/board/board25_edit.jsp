<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "net.daum.vo.BoardVO, net.daum.dao.BoardDAOImpl" %>
<%
 
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDAOImpl bdao = new BoardDAOImpl();
	BoardVO eb = bdao.getBoardCont(bno);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 폼</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function check() {
		if ($.trim($('#bname').val()) == '') {
			alert('글쓴이를 입력하세요!');
			$('#bname').val('').focus();
			return false;
		}

		if ($.trim($('#btitle').val()) == '') {
			alert('글제목를 입력하세요!');
			$('#btitle').val('').focus();
			return false;
		}

		if ($.trim($('#bcont').val()) == '') {
			alert('글내용을 입력하세요!');
			$('#bcont').val('').focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form method="post" action="board25_edit_ok.jsp"
		onsubmit="return check();">
		<%--게시판 번호 히든값 --%>
		<input type="hidden" name="bno" value="<%=bno %>">
		<table border="1">
			<caption>jsp 게시판 글수정 폼</caption>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="bname" id="bname" size="14"
				value="<%=eb.getBname()%>"></td>
			</tr>
			<tr>
				<th>글제목</th>
				<td><input type="text" name="btitle" id="btitle" size="36" 
				value="<%=eb.getBtitle()%>"></td>
				
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea  name="bcont" id="bcont" rows="10"
					cols="36"><%=eb.getBcont()%></textarea></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="수정"> 
				<input type="reset" value="취소" onclick="location=
					'board_cont.jsp?bno=<%=bno%>';">
				</th>
					
			</tr>
		</table>
	</form>
</body>
</html>