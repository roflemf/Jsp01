package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {//쿠키 클래스
	
	private Map<String, Cookie> cookieMap = new HashMap<>(); 
	//문자열 쿠키 이름, 값으로 쿠키객체를 쌍으로 저장하는 사전적 자료구조 컬렉션 맵
	
	public Cookies(HttpServletRequest request) {
		//HttpServlet 서블릿은 사용자 폼에서 입력한 정보를 서버로 가져오는 역할
		Cookie[] cookies = request.getCookies();//쿠키 배열 구함
		if(cookies !=null) {
			for(int i=0; i<cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);//쿠키이름,값 쌍으로 저장
			}//for
		}//if
	}//전달인자 개수가 다른 생성자 오버로딩

	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}//쿠키이름에 대한 쿠키 객체를 구함
	
	public String getValue(String name) throws IOException{
		Cookie cookie = cookieMap.get(name);
		if(cookie== null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(), "UTF-8");
	}//쿠키이름에 대한 값 디코드 해서 반환
	
	public boolean exists(String name) {
		return cookieMap.get(name) !=null;
	}//쿠키이름에 대한 쿠키 존재하면 참
	
	public static Cookie createCookie(String name, String value) throws IOException{
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		
	}//쿠키이름과 값을 가진 쿠키 생성
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException {
		//전달인자 개수가 다른 메서드 오버로딩
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
		
	}//쿠키이름, 값, 경로, 유효시간을 가진 쿠키를 생성
	
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge)
	throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
		
	}//쿠키이름, 값, 경로, 유효시간 가진 쿠키 생성

}
