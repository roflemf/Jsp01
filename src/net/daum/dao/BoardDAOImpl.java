package net.daum.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import net.daum.vo.BoardVO;

public class BoardDAOImpl {
	
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 jdbc드라이버 클래스명
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //오라클 접속주소, 1521은 포트번호, xe는 데이터 베이스명
	String user="night";//오라클접속 사용자
	String pwd="123456";//사용자 비번
	
	Connection con= null; //데이터베이스 연결 con
	Statement stmt=null; //쿼리문 수행
	PreparedStatement pt = null; //쿼리문 수행
	ResultSet rs = null; //검색결과 레코드를 저장할 rs
	String sql=null; //쿼리문 저장 변수
	
	//게시판 목록
	public List<BoardVO> getBoardList(){
		List<BoardVO> blist = new ArrayList<>();
		
		try {
			Class.forName(driver);//오라클 jdbc 드라이버 클래스 로드
			con = DriverManager.getConnection(url, user, pwd);
			sql= "select * from boardT order by bno desc"; //번호를 기준으로 내림차순 정렬
			pt = con.prepareStatement(sql);//쿼리문을 미리 컴파일 하여 수행할 pt생성
			rs= pt.executeQuery();//검색 쿼리문 수행 후 결과 레코드를 rs에 저장
			
			while(rs.next()) {//복수개의 레코드가 검색되면while 반복문으로 처리, next()메서드는 다음 레코드행 존재하면 참
				BoardVO b= new BoardVO();
				b.setBno(rs.getInt("bno"));//bno컬럼으로부터 정수 숫자 번호값 레코드를 가져와서 저장
				b.setBname(rs.getString("bname"));//bname컬럼으로부터 문자열 레코드를 가져와서 저장
				b.setBtitle(rs.getString("btitle"));
				b.setBhit(rs.getInt("bhit"));
				b.setBdate(rs.getString("bdate"));
			
				blist.add(b);//컬렉션에 추가
				}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(pt !=null) pt.close();
				if(con !=null) con.close();
				
			}catch(Exception e) {e.printStackTrace();}
		}
		return blist;
	}//getBoardList()
	
	//조회수 증가
	public void updateHit(int bno) {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pwd);
			sql="update boardT set bhit = bhit+1 where bno=?";//번호를 기준으로 1조회수 증가
			pt=con.prepareStatement(sql);
			pt.setInt(1, bno);//쿼리문의 첫번째 물음표에 정수숫자로 번호값 저장
			pt.executeUpdate();//수정 쿼리문 수행후 성공한 레코드 행의 개수 반환
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt !=null) pt.close();
				if(con !=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}//updateHit()
	
	//게시판 내용보기 
	public BoardVO getBoardCont(int bno) {
		BoardVO b = null;
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, pwd);
			sql="select * from boardT where bno=?";
			pt=con.prepareStatement(sql);
			pt.setInt(1, bno);
			rs=pt.executeQuery();
			if(rs.next()){
				//한개레코드로 검색되는 경우는 if로 처리
				b=new BoardVO();
				b.setBno(rs.getInt("bno"));
				b.setBname(rs.getNString("bname"));
				b.setBtitle(rs.getNString("btitle"));
				b.setBcont(rs.getNString("bcont"));
				b.setBhit(rs.getInt("bhit"));
			
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null) rs.close();
				if(pt!=null) pt.close();
				if(con!=null) con.close();
				
			}catch(Exception e) {e.printStackTrace();}
	}
	return b;
 }//getBoardCont()
	
	//게시판 수정
	public int editBoard(BoardVO b) {
		int re=-1;//수정 실패시 반환값
		try {
			System.out.println("BoardVO:: " + b.getBcont());
			System.out.println("BoardVO BNO:: " + b.getBno());
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pwd);
			sql = "update boardT set bname=?, btitle=?, bcont=? where bno=?";
			pt=con.prepareStatement(sql);
			pt.setString(1, b.getBname());
			pt.setString(2, b.getBtitle());
			pt.setString(3, b.getBcont());
			pt.setInt(4, b.getBno());
			
			
			re=pt.executeUpdate();//수정 쿼리문 수행 후 성공한 레코드 행의 개수를 반환
			System.out.println("re::" + re);
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt!= null) pt.close();
				if(con!= null) con.close();
			}catch(Exception e){e.printStackTrace();}
		}
		return re;
	}//editBoard()
	
	//게시물 삭제
	public int delBoard(int bno) {
		int re =-1;
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pwd);
			sql="delete from boardT where bno=?";
			pt=con.prepareStatement(sql);
			pt.setInt(1, bno);//쿼리문의 첫번째 물음표에 정수 숫자로 번호값을 저장
			re=pt.executeUpdate();//삭제문 실행후 성공한  레코드 행의 개수를 반환 =>1
			
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt !=null)pt.close();
				if(con !=null)con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;
	}//delBoard()
	
}
