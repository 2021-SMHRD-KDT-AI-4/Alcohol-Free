package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;


@WebServlet("/Recommend_Sevice")
public class Recommend_Sevice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
	HttpSession  session = request.getSession();
		
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		CocktailDAO dao = new CocktailDAO();
		CocktailDTO dto =  dao.C_Info(info.getId());
		
		System.out.println(dto.getCocktail_id());
		
		// Json형태로 만들어주기

		Gson gson = new Gson();
		String JIMG = gson.toJson("cocktail_IMG");
		String JID = gson.toJson("Cocktail_ID");
		String JLEN = gson.toJson("Emotional_Len");
		String JVOL = gson.toJson("alc_Vol");
		String JBASE = gson.toJson("base");
		String JFLAVOR = gson.toJson("flavor");
		String JINGREDIENT = gson.toJson("ingredient");
		String JREC = gson.toJson("recipe");
		String JHIS = gson.toJson("cocktail_his");

		ArrayList<String> json1 = new ArrayList<String>();
		json1.add(0, JIMG);
		json1.add(1, JID);
		json1.add(2, JLEN);
		json1.add(3, JVOL);
		json1.add(4, JBASE);
		json1.add(5, JFLAVOR);
		json1.add(6, JINGREDIENT);
		json1.add(7, JREC);
		json1.add(8, JHIS);
		
		String json = new Gson().toJson(json1);

		
		// json형태로 ajax로 보내기
		response.getWriter().print(json);

		
//		String a = "a";
//		response.getWriter().print(a);

	}
}
