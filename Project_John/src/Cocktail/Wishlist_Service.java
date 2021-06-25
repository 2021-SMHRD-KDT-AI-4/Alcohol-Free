package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Wishlist_Service")
public class Wishlist_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cocktail_id = request.getParameter("cocktail_id");
		String user_id = request.getParameter("user_id");
		String a_1 = request.getParameter("a_1");
		WishlistDAO wdao = new WishlistDAO();
		WishlistDTO wdto = new WishlistDTO(user_id, cocktail_id, a_1);
		int cnt = wdao.wish_insert(wdto);
		
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print(a_1);
	}

}
