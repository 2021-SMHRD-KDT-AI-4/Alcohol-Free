package Cocktail;

import java.io.IOException;
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

		HttpSession session = request.getSession();
		CocktailDTO info = (CocktailDTO)session.getAttribute("info");
		String CID = info.getCocktail_id();
		String CIMG = info.getCocktail_IMG();
		String Emo = info.getEmotional_len();

	}

}
