<%@ page  contentType="text/html; charset=UTF-8"%>
<%!
 //%!는 jsp 스크립트 요소에서 선언문이라고 한다. 주로 변수 선언, 메서드 선언 용도로 활용됌
 
 public int multiply(int a, int b){
	
	int result = a*b; 
	return result; 
	
}
%>
<h3>10*20=<%=multiply(10,20)%></h3>