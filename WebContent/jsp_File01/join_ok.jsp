<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); 
	//method=post방식으로 전달되는 한글 안깨지게
%>
<jsp:useBean id="m" class="net.daum.vo.MemVO" />
<%--jsp:useBean 액션태그로 MemVO빈클래스의 객체명m을 생성 --%>
<jsp:setProperty name="m" property="*" />
<%--값 저장 액션태그. 
property 속성값으로 *처리하면 아이디, 비번, 이름, 이메일까지 한꺼번에 m에 저장 
네임파라미터 이름과 빈클래스의 변수명 같기 때문에 이것이 가능--%>

아이디 : <jsp:getProperty property="id" name="m" /><hr>
<%--값반환 액션 태그. property속성값 id는 MemVO빈클래스의 변수명이 된다.
	m.getId(); 위 부분을 자바코드로 표현한 것.--%>
비번: <jsp:getProperty property="pwd" name="m"/><hr>
이름: <%=m.getName()%><hr>
이메일: <%=m.getEmail()%><HR>
<a href="jsp18_memberJoin.jsp">회원가입</a>