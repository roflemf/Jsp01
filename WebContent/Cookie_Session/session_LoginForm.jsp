<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function loginCheck(){
		if($.trim($('#login_id').val())==''){
			alert('로그인 아이디를 입력하세요!')
				$('#login_id').val('').focus();
				return false;
		}
		if($.trim($('#login_pwd').val())==''){
			alert("로그인 비번 입력하세요!");
			$('#login_pwd').val('').focus();
			return false;
		}
	}
</script>
</head>
<body onLoad="$('#login_id').focus();"> <%--onLoad 이벤트는 웹페이지 시작과 동시에 발생함
										     웹페이지 시작과 동시에 아이디 입력박스로 포커스 이동 --%>
 <h3>세션(session) 로그인 폼</h3>
 <form mehtod="post" action="session_LoginOK.jsp" onsubmit="return loginCheck();">
 	아이디 : <input name="login_id" id="login_id" size='14'>
 	비밀번호 : <input type="password" name="login_pwd" id="login_pwd" size="14" >
 	<input type="submit" value="로그인" > 
 </form>
</body>
</html>