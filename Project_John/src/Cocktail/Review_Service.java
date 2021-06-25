package Cocktail;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Cocktail.ReviewDAO;
import Cocktail.ReviewDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/Review_Service")
public class Review_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
	
		String savePath = request.getServletContext().getRealPath("img");  
				
		System.out.println(savePath);

		int maxSize = 5*1024*1024;	

		String encoding = "EUC-KR";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
				
		String TITLE = multi.getParameter("TITLE");

		String user_IMG = URLEncoder.encode(multi.getFilesystemName("INPUT_FILE"), "EUC-KR");
		String post = multi.getParameter("CONTENT");

		
		String id = request.getParameter("user_id");
		System.out.println("user_id"+id);
		
		
		
   
				
		
		CommunityDTO cdto = new CommunityDTO(id, user_IMG, post, TITLE);
		CommunityDAO cdao = new CommunityDAO();
		int cnt = cdao.community_insert(cdto);
				
		if(cnt>0) {
			System.out.println("리뷰 작성 성공");
			response.sendRedirect("Main_page.jsp");
		}else {
			System.out.println("리뷰 작성 실패");
			response.sendRedirect("Review.jsp");
		}
				
	}
}
		
		
	
