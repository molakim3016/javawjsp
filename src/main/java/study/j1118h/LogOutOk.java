package study.j1118h;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/study/j1118h/LogOutOk")
public class LogOutOk extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int sw = (int)session.getAttribute("sw");
		String mid = (String)session.getAttribute("sMid");
		PrintWriter out = response.getWriter();
		Cookie[] cookies = request.getCookies();
		System.out.println(sw);
		if(sw==0) {
			if(cookies != null) {
				for(int i=0;i<cookies.length; i++) {
					cookies[i].setPath("/");
					cookies[i].setMaxAge(0);	// 쿠키의 만료시간을 0으로 설정하여 쿠키를 제거한다.
					response.addCookie(cookies[i]);
				}
			}
		}
		
		out.println("<script>");
		out.println("alert('"+mid+"님 로그아웃 되셨습니다.');");
		out.println("location.href='"+request.getContextPath()+"/study/1118h/login.jsp';");
		out.println("</script>");
	}
}
