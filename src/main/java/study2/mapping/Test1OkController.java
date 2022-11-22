package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test1Ok")
public class Test1OkController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/mapping/Test1Ok 서블릿입니다.");
		String sw = "1";
		request.setAttribute("sw", sw);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mapping/Test1");			/* \\와 /는 같은 의미	*/
		dispatcher.forward(request, response);
	}
}
