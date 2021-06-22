package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Cocktail.MemberDAO;
import Cocktail.MemberDTO;

@WebServlet("/Update_Service")
public class Update_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String PW = request.getParameter("PW");
		String ALCOHOL_TYPE = request.getParameter("ALCOHOL_TYPE");
		int ALCOHOL_CAPACITY = Integer.parseInt(request.getParameter("ALCOHOL_CAPACITY"));
		String FLAVOR = request.getParameter("FLAVOR");
		
		MemberDTO dto = new MemberDTO(PW, ALCOHOL_TYPE, ALCOHOL_CAPACITY, FLAVOR);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(dto);
			      
		if(cnt > 0){
			response.sendRedirect("Main_page.jsp");
		}else{
		    response.sendRedirect("User_Update_page.jsp");
		}
	}

}
