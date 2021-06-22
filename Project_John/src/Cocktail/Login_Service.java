package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login_Service")
public class Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(ID, PW);
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			response.sendRedirect("resource/Main_page.jsp");
		}else {
			System.out.println("로그인 실패");
			response.sendRedirect("Login_page.jsp");
		}
		
		
	}	
	

}
