<%@ page  contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	//JSP에서 post로 전송되는 한글이 깨지지 않게 하는 코드
	
	String name = request.getParameter("name");
	String addr = request.getParameter("address");
	String[] hobby = request.getParameterValues("hobby");
	//checkbox는 복수개값이 전달되기 때문에 배열로 받는다.
	
	out.println("이름 : " + name + "<hr>");
	out.println("주소 : " + addr + "<hr>");
	
	out.println("선택한 취미는");
	if(hobby != null && hobby.length >0){
		for(String h:hobby){
			out.println("&nbsp;"+h); //&nbsp; 한칸의 빈 공백 
		}
	}else{
		out.println("없습니다");
	}

%>
<hr>

<!-- 
<a href="jsp_06.jsp">새로 입력</a>


아래코드; 이동링크를 버튼으로 감쌀경우
 -->




<script type="text/javaScript">
function writeH(){
     location.href = "jsp_06.jsp;";
}
</script>
 
 
<button type="button" onclick="writeH();">새로 입력</button>

