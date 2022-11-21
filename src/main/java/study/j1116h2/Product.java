package study.j1116h2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j1116h/Product")
public class Product extends HttpServlet {
	ProductVO vo = new ProductVO("", 0, 0, 0);
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String sw= request.getParameter("sw")==null? "" : request.getParameter("sw");
		String viewPage;
		
		if(request.getParameter("name")!=null) {
			String name = request.getParameter("name")==null ? "" : request.getParameter("name");
			int price = request.getParameter("price")==null ? 0 : Integer.parseInt(request.getParameter("price"));
			int count = request.getParameter("count")==null ? 0 : Integer.parseInt(request.getParameter("count"));
			int tot = price * count;
			vo = new ProductVO(name, price, count, tot);
		}

	
		request.setAttribute("vo", vo);
		viewPage = "/study/1116h/main.jsp?sw="+sw;
		request.getRequestDispatcher(viewPage).forward(request, response);
	}

}
