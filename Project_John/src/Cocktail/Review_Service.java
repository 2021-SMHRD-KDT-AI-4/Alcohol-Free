package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Review_Service")
public class Review_Service extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("EUC-KR");
      String TITLE = request.getParameter("TITLE");
      String INPUT_FILE = request.getParameter("input_file");
      String Content = request.getParameter("Content");
      
      ReviewDTO dto = new ReviewDTO(TITLE, INPUT_FILE, Content);
      ReviewDAO dao = new ReviewDAO();
      int cnt = dao.insert(dto);
      
      if(cnt>0){
         System.out.println("리뷰 작성 성공");
         response.sendRedirect("Main_page.jsp");
      }else{
         System.out.println("리뷰 작성 실패");
         response.sendRedirect("Review.jsp");
      }
   }

}