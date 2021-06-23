package Cocktail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MessageDAO;
import com.model.MessageDTO;

@WebServlet("/Review_Service")
public class Review_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String TITLE = request.getParameter("TITLE");
		String INPUT_FILE = request.getParameter("input_file");
		String REVIEW = request.getParameter("REVIEW");
		
		CommunityDTO dto = new CommunityDTO(TITLE, INPUT_FILE, REVIEW);
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println("전송 성공");
		}else {
			System.out.println("전송 실패");
		}
		response.sendRedirect("main.jsp#two");
	}
	}

}
