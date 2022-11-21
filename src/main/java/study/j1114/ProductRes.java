package j1114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/ProductRes")
public class ProductRes extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String[] proN = request.getParameterValues("proN");
		String[] proP = request.getParameterValues("proP");
		String[] proC = request.getParameterValues("proC");
		int[] totI = new int[proN.length];
		int res = 0;
		
		for(int i=0; i<proN.length; i++) {
			totI[i] = Integer.parseInt(proP[i]) * Integer.parseInt(proC[i]);
			res += totI[i];
		}
		out.println("	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n"
				+ "  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>");
		out.println("<div class='container'>");
		out.println("<h2>상품출력결과</h2>");
		for(int i=0; i<proN.length; i++) {
			out.println("<p>상품이름 : "+proN[i]+" 상품가격 : "+proP[i]+" 상품개수 : "+proC[i]+"</p>");
		}
		out.println("<p>총가격 : "+res+"</p>");
		out.println("</div>");
	}
}
