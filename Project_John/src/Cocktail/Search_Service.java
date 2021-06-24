package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Search_Service")
public class Search_Service extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("EUC-KR");
      
      String Search_content = request.getParameter("Search_content");
      System.out.println("검색한칵테일: " +Search_content);
      CocktailDAO dao = new CocktailDAO();
      String cocktail_id =dao.Search_cocktail(Search_content);
      PrintWriter out = response.getWriter();
      System.out.println("검색결과 칵테일: "+cocktail_id);
      out.print(cocktail_id);
      
      
   }

}