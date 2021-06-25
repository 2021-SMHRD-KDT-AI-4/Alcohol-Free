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


@WebServlet("/Wish_List")
public class Wish_List extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("EUC-KR");
      
      HttpSession  session = request.getSession();
      
//      MemberDTO info = (MemberDTO)session.getAttribute("info");
//      CocktailDAO dao = new CocktailDAO();
//      CocktailDTO dto =  dao.C_Info(info.getId());
      
      //System.out.println(dto.getCocktail_id());
      
      // Json형태로 만들어주기

      Gson gson = new Gson();
      String JIMG = "cocktail_IMG";
      String JID = "Cocktail_ID";
      String JLEN = "Emotional_Len";
      int JVOL = 1;
      String JBASE = "base";
      String JFLAVOR = "flavor";
      String JINGREDIENT ="ingredient";
      String JREC = "recipe";
      String JHIS = "cocktail_his";
      
      CocktailDTO dto = new CocktailDTO(JIMG, JID, JLEN, JVOL, JBASE, JFLAVOR, JINGREDIENT, JREC, JHIS);
      ArrayList<CocktailDTO> a = new ArrayList<CocktailDTO>();
      a.add(dto);
      

//      ArrayList<String> json1 = new ArrayList<String>();
//      json1.add(0, JIMG);
//      json1.add(1, JID);
//      json1.add(2, JLEN);
//      json1.add(3, JVOL);
//      json1.add(4, JBASE);
//      json1.add(5, JFLAVOR);
//      json1.add(6, JINGREDIENT);
//      json1.add(7, JREC);
//      json1.add(8, JHIS);
      
      String json = new Gson().toJson(a);

      
      // json형태로 ajax로 보내기
      response.getWriter().print(json);

      
//      String a = "a";
//      response.getWriter().print(a);

   }
}