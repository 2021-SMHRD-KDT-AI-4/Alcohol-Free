package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Cocktail.MemberDAO;

@WebServlet("/IdCheck_Service")
public class IdCheck_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("ID");
		
		MemberDAO dao = new MemberDAO();
		
		boolean check = dao.idCheck(ID);
		PrintWriter out = response.getWriter();
		out.print(check);
	}

}
