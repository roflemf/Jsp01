<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function login_check() {
		if($.trim($('#id').val())==''){
			alert('로그인 아이디를 입력하세요');
			$('#id').val('').focus();
			return false;
		}
		
		if($.trim($('#pass').val()).length==0){
			alert('로그인 비번을 입력하세요!');
			$('#pass').val('').focus();
			return false;
		}
		
	}
</script>
</head>
<body>
<h2>쿠키 로그인 폼</h2>
<form method="post" action="cookie_LoginOK.jsp" onsubmit="return login_check();">
 <table border="1">
  <tr>
   <th>아이디</th>
   <td><input name="id" id="id" size="16" tabindex="1"> <%--tabindex="1"로 주면 탭키를 눌렀을 때 첫번째로 입력필드를 가짐 --%>
   <th rowspan="2"><%--rowspan="2"; 두개의 행을 합치기 => 1행3열 & 2행3열 합쳐짐--%> 
   <input type="submit" value="로그인">
   </th>
  </tr>
  
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="pass" id="pass" size="16" tabindex="2"> </td>
   		<%--tabindex="2"로 주면 탭키를 눌렀을 때 2번째로 포커스를 가짐 --%>
   </tr> 
  </table>
</form>
</body>
</html>