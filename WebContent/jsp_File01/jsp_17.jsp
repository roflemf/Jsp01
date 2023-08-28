<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
	Calendar cal = Calendar.getInstance();

	request.setAttribute("time", cal); //문자열 키이름 time에 cal을 최상위 Object 으로 업캐스팅하면서 저장
	
%>
<jsp:forward page = "/to/viewTime.jsp" /> 
<%--포워딩이 되면 time 키이름 값을 잃어버리지 않고 유지 --%>