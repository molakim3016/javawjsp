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
@WebServlet("/study/j1118h/LoginOk")
public class LoginOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "" : request.getParameter("mid");
		String pwd = (request.getParameter("mid")==null || request.getParameter("mid")=="") ? "" : request.getParameter("pwd");
		String IdSave = request.getParameter("IdSave")==null ? "" : request.getParameter("IdSave");
		
		PrintWriter out = response.getWriter();
		
		if((mid.equals("admin")&&pwd.equals("1234")) || (mid.equals("hkd1234")&&pwd.equals("1234"))){
			
			HttpSession session = request.getSession();
			session.setAttribute("sMid", mid);
			
			if(IdSave.equals("on")) {
				session.setAttribute("sw", 1);
				Cookie cookie = new Cookie("ccMid",mid);
				cookie.setPath("/");		// 웹 어플리케이션 전체 경로에서 사용하고자 할 때
				cookie.setMaxAge(60*5);		// 쿠키의 만료시간을 5분으로 설정
				response.addCookie(cookie);
			}
			else {
				session.setAttribute("sw", 0);
			}
			
			int visitCnt = 0;
			
			if(session.getAttribute("sVisitCnt")==null) {
				session.setAttribute("sVisitCnt", 1);
			}
			else {
				visitCnt = (int)session.getAttribute("sVisitCnt") + 1;
				session.setAttribute("sVisitCnt", visitCnt);
			}

			out.println("<script>");
			out.println("alert('"+mid+"님 로그인 되셨습니다.');");
			out.println("location.href='"+request.getContextPath()+"/study/1118h/loginMember.jsp';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('아이디와 비밀번호를 확인하세요!');");
			out.println("history.back();");
			out.println("</script>");
		}
	}

}