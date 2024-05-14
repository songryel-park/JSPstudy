package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
	public static void makeCookie(HttpServletResponse response, String cName,
            String cValue, int cTime) {
        Cookie cookie = new Cookie(cName, cValue); // 쿠키 생성
        cookie.setPath("/");         // 경로 설정
        cookie.setMaxAge(cTime);     // 유지 기간 설정
        response.addCookie(cookie);  // 응답 객체에 추가
    }
	
	public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = "";  // 반환 값

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                String cookieName = c.getName();
                if (cookieName.equals(cName)) {
                    cookieValue = c.getValue();  // 반환 값 갱신
                }
            }
        }
        return cookieValue;
    }
	
	public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}
