<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<%--jquery.com의 최신버전 jquery 라이브러리를 CDN방식으로 읽어옴 --%>
<script>
	function join_check() {
		if($.trim($("#id").val()).length ==0){
			alert("아이디를 입력하세요");
			$("#id").val('').focus();
			return false;
		}
		
		if($.trim($('#pwd').val())==''){
			alert('비번을 입력하세요!');
			$('#pwd').val('').focus();
			return false;
		}
		
		$name = $.trim($('#name').val());
		if($name == ''){
			alert('회원이름을 입력하세요!');
			$('#name').val('').focus();
			return false;	
		}
		
		$email = $.trim($('#email').val());
		if($email.length == 0){
			alert('이메일을 입력하세요!');
			$('#email').val('').focus();//이메일 입력필드를 초기화 후 포커스 이동
			return false;	
		}
	}
</script>
</head>

<body>
<h2>jsp:useBean 액션 태그 실습</h2>
<form method="post" action="join_ok.jsp" onsubmit="return join_check();">
 아이디: <input type="text" name ="id" id="id" size="14" ><br><br> 
 비밀번호: <input type="password" name="pwd" id="pwd" size="14" ><br><br>
 회원이름: <input name="name" id="name" size="14" ><br><br>
  		<%--type속성 생략하면 기본값이 text이다 --%>
 이메일: <input type="email" name="email" id="email" size="30">
 
 <hr>
 <input type="submit" value="가입" >
 <input type="reset" value="취소">
 
</form>
</body>
</html>