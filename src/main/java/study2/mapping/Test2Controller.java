package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test2")
public class Test2Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/mapping/Test2 서블릿입니다.");
		
		Test2Ok test2Ok = new Test2Ok();
		test2Ok.messege();
		
		Test2OkOk test2OkOk = new Test2OkOk();
		test2OkOk.messege();

		System.out.println("다시 /mapping/Test2 서블릿입니다.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test1.jsp");			/* \\와 /는 같은 의미	*/
		dispatcher.forward(request, response);
	}
}
