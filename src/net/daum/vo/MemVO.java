package net.daum.vo;

public class MemVO {//중간자료 저장 역할 ; 데이터 저장빈 클래스
	/* jsp18_memberJoin.jsp의 네임 파라미터 이름과 빈클래스 변수명을 같게 하면
	 * jsp:usebean 액션태그에서 코드라인을 줄일 수 있다.
	 */
	private String id;
	private String pwd;
	private String name;
	private String email;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
