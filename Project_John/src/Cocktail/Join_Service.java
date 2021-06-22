package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Cocktail.MemberDAO;
import Cocktail.MemberDTO;

@WebServlet("/Join_Service")
public class Join_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String NAME = request.getParameter("NAME");
		String GENDER = request.getParameter("GENDER");
		int AGE = Integer.parseInt(request.getParameter("AGE"));
		String ALCOHOL_TYPE = request.getParameter("ALCOHOL_TYPE");
		int ALCOHOL_CAPACITY = Integer.parseInt(request.getParameter("ALCOHOL_CAPACITY"));
		String FLAVOR = request.getParameter("FLAVOR");
	
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(ID, PW, NAME, GENDER, AGE, ALCOHOL_TYPE, ALCOHOL_CAPACITY, FLAVOR); 
		int cnt = dao.join(dto);
		
		if(cnt>0){
			System.out.println("성공");
			response.sendRedirect("Main_page.jsp");
		}else{
			System.out.println("실패");
			response.sendRedirect("Join_page.jsp");
		}
		
	}
}

