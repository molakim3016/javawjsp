package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test1")
public class Test1Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sw = request.getAttribute("sw")==null ? "0" : (String)request.getAttribute("sw");
		
		if(sw.equals("0")) {
			System.out.println("/mapping/Test1 서블릿입니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/mapping/Test1Ok");			/* \\와 /는 같은 의미	*/
			dispatcher.forward(request, response);
		}
		else if(sw.equals("1")) {
			System.out.println("다시 /mapping/Test1 서블릿입니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test1.jsp");			/* \\와 /는 같은 의미	*/
			dispatcher.forward(request, response);
		}
	}
}
