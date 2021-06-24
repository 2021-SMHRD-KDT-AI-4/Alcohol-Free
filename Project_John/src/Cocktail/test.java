package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

@WebServlet("/test")
public class test extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession  session = request.getSession();
		
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		CocktailDAO dao = new CocktailDAO();
		CocktailDTO dto =  dao.C_Info(info.getId());
		
		System.out.println(dto.getCocktail_id());
		
		
		// Json형태로 만들어주기
		Gson gson = new Gson();
		String json = gson.toJson("여기에 담기");
		
		// json형태로 ajax로 보내기
		response.getWriter().print(json);
		
//		String a = "a";
//		response.getWriter().print(a);
		
	
	}

}
