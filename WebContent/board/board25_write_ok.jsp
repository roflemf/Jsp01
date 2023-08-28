<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8"); //post로 전달되는 한글 안깨지게
	
	String bname = request.getParameter("bname"); //글쓴이
	String btitle = request.getParameter("btitle"); //글제목
	String bcont = request.getParameter("bcont"); //글내용
	
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //오라클 접속주소, 1521은 포트번호, xe는 데이터 베이스명
	String user="night";//오라클접속 사용자
	String pwd="123456";//사용자 비번
	
	Connection con= null; //데이터베이스 연결 con
	Statement stmt=null; //쿼리문 수행
	String sql=null; //쿼리문 저장 변수
	
	try{
		Class.forName(driver); //jdbc드라이브 클래스 로드
		con = DriverManager.getConnection(url,user,pwd);
		stmt=con.createStatement();// 쿼리문 수행stmt 생성
		sql = "insert into boardT (bno,bname,btitle,bcont,bdate) values("+" bno_seq25.nextval,'"+bname+"','"+btitle+"','"+bcont+"',sysdate)";
		
		int re = stmt.executeUpdate(sql); //저장 쿼리문 수행후 성공한 레코드 행의 개수 반환
		
		if(re==1){
			out.println("<script>");
			out.println("alert('게시판 저장에 성공했습니다!');");
			out.println("location='board_list.jsp';");//게시판 목록보기로 이동
			out.println("</script>");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(stmt !=null) stmt.close();
			if(con !=null) con.close();
		}catch(Exception e){e.printStackTrace();}
	}

%>

