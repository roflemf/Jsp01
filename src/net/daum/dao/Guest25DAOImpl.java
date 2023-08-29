package net.daum.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import net.daum.vo.GuestVO;

public class Guest25DAOImpl {
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //오라클 접속주소, 1521은 포트번호, xe는 데이터 베이스명
	String user="night";//오라클접속 사용자
	String pwd="123456";//사용자 비번
	
	Connection con= null; //데이터베이스 연결 con
	Statement stmt=null; //쿼리문 수행
	PreparedStatement pstmt = null; //쿼리문 수행
	ResultSet rs = null; //검색결과 레코드를 저장할 rs
	String sql=null; //쿼리문 저장 변수
	
	//방명록 저장
	public int insertGuest(GuestVO g){
	   int re=-1;//저장 실패시 반환값

	   try {
	      Class.forName(driver);
	      con=DriverManager.getConnection(url, user, pwd);
	      sql="insert into tbl_guest25 (gno,gname,gtitle,gcont,gdate) values(bno_seq.nextval,?,?,?,sysdate)";
	      pstmt=con.prepareStatement(sql);
	      pstmt.setString(1,g.getGname());
	      pstmt.setString(2,g.getGtitle());
	      pstmt.setString(3,g.getGcont());

	      re=pstmt.executeUpdate();

	   }catch(Exception e) {e.printStackTrace();}
	   finally {
	      try {
	         if(pstmt != null) pstmt.close();
	         if(con != null) con.close();
	      }catch(Exception e) {e.printStackTrace();}
	   }
	   return re;       
	}//insertGuest()

	//방명록 목록 
	public List<GuestVO> getGuList(){
	   List<GuestVO> glist=new ArrayList<>();

	   try {
	      Class.forName(driver);
	      con=DriverManager.getConnection(url, user, pwd);//db연결 con생성
	      sql="select * from tbl_guest25 order by gno desc";//공지 번호를 기준으로 내림차순 정렬
	      pstmt=con.prepareStatement(sql);
	      rs=pstmt.executeQuery();//select문 수행후 검색결과 레코드를 rs에 저장
	      while(rs.next()) {//복수개의 레코드행이 검색되어서 while 반복문으로 처리
	         GuestVO g=new GuestVO();
	         g.setGno(rs.getInt("gno"));//gno컬럼에 저장된 공지번호를 정수 숫자로 가져와서 setter
	         //()메서드에 저장
	         g.setGname(rs.getString("gname"));
	         g.setGtitle(rs.getString("gtitle"));
	         g.setGcont(rs.getString("gcont"));
	         g.setGdate(rs.getString("gdate"));

	         glist.add(g);//컬렉션에 추가
	      }
	   }catch(Exception e) {e.printStackTrace();}
	   finally {
	      try {
	         if(rs != null) rs.close();
	         if(pstmt != null) pstmt.close();
	         if(con != null) con.close();
	      }catch(Exception e) {e.printStackTrace();}
	   }
	   return glist;
	}//getGuList()
}



