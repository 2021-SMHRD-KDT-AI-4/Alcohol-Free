package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Recommend_Sevice")
public class Recommend_Sevice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String CID = request.getParameter("Cocktail_ID");
		String LEN = request.getParameter("Emotional_Len");
		String HIS = request.getParameter("cocktail_his");
		String RECIPE = request.getParameter("recipe");
		int VOL = Integer.parseInt("alc_Vol");
		String BASE = request.getParameter("base");
		String FLAVOR = request.getParameter("flavor");
		String INGREDIENT = request.getParameter("ingredient");
		
		
		CocktailDAO dao = new CocktailDAO();
		CocktailDTO dto = new CocktailDTO(CID, LEN, HIS, RECIPE, VOL, BASE, FLAVOR, INGREDIENT);
		CocktailDTO cinfo = dao.C_Info(dto);
		
		if(cinfo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("cinfo", cinfo);
		}

}
