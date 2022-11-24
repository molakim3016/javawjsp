package guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class adminLogoutCommand implements GuestInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		session.removeAttribute("sAMid");
		
		request.setAttribute("msg", "adminLoginoutOk");
		request.setAttribute("url", request.getContextPath()+"/guList.gu");
	}

}
