<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>이름과 주소, 좋아하는 취미 입력폼</h2>
 <form method = "post" action = "jsp06_ok.jsp">
 이름 : <input type="text" name="name" size="14" ><br><br>
 주소 : <input type="text" name="address" size="36" ><br><br>
 좋아하는 취미 : 
 		<input type="checkbox" name = "hobby" value="여행">여행
 		<input type="checkbox" name = "hobby" value="등산">등산
 		<input type="checkbox" name = "hobby" value="유튜브">유튜브
 		<input type="checkbox" name = "hobby" value="맛집 찾기">맛집 찾기
 		<hr>
 		<input type="submit" value="전송">
 		<input type="reset"  value="취소">
</body>
</html>