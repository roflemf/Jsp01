<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<!-- page import 속성을 사용해 외부 패키지의 api를 임포트. 여기서는 java.util패키지의 모든 api를 읽어들임(import) -->
<%
//이 영역을 jsp 스크립트 요소에서 스크립트 릿이라고 함. 스크립트 릿에서는 자바 문법을 따라감.
Calendar cal = Calendar.getInstance();

int hour = cal.get(Calendar.HOUR_OF_DAY); //24시간을 구함
int minute = cal.get(Calendar.MINUTE); //분값
int second = cal.get(Calendar.SECOND); //초값
%>
<strong><%=hour%></strong>시 
<b><%=minute%></b>분 
<b><%=second%></b>초 입니다.
<%-- %=은 스크립트 요소에서 출력용도로 활용되는 표현식. 
숫자를 표현식으로 출력하면 문자열 숫자로 출력됌 --%>
