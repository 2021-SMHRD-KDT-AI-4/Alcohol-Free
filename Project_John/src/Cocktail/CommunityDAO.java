package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommunityDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String durl = "jdbc:oracle:thin:@172.30.1.53:1521:xe";
			String did = "hr";
			String dpw = "hr";
			
			conn = DriverManager.getConnection(durl, did, dpw);
			 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	private void getClose() {
		try {
			if(rs != null){
				rs.close();
			}
			if(psmt != null){
				psmt.close();
			}
			if(conn != null){
				conn.close();
			}
	}catch (SQLException e) {
		e.printStackTrace();
		}
	}
	
	public int update_like(int btn) {
		int cnt = 0;
	
		try {
			getConnection();

			String sql = "UPDATE COMMUNITY SET Like_Cnt = Like_Cnt+1 WHERE NUM = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, btn);

			cnt = psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
	
	public int select_like(int btn) {

		int like = 0;
		
		try {
			getConnection();
			
			String sql = "SELECT Like_Cnt FROM COMMUNITY WHERE NUM = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, btn);
			
			rs = psmt.executeQuery();
			
			if(rs.next()){
				like = rs.getInt("like_cnt");
			}else {
				like = 0;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return like;
	}
	
	public int dislike(int btn) {
		int cnt = 0;
	
		try {
			getConnection();

			String sql = "UPDATE COMMUNITY SET Like_Cnt = Like_Cnt-1 WHERE NUM = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, btn); 

			cnt = psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
public int community_insert(CommunityDTO dto) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			String sql = "INSERT INTO community VALUES(?,?,Post_Num.NEXTVAL,?,0,Comment_Num.NEXTVAL,'',sysdate,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_ID());
			psmt.setString(2, dto.getUser_IMG());
			psmt.setString(3, dto.getPost());			
			psmt.setString(4, dto.getComments());						
			psmt.setString(5, dto.getTITLE());
			
			cnt = psmt.executeUpdate();
			
			if(cnt > 0){
				System.out.println("커뮤니티 정보 넣기 성공");
			}else{
				System.out.println("커뮤니티 정보 넣기 실패");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
    public ArrayList<CommunityDTO> community_contents() {
	   ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();
	
		
		try {
			getConnection();
		
			String sql = "SELECT * FROM COMMUNITY";
			
			psmt = conn.prepareStatement(sql);
			
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String user_ID = rs.getString(1);
				String user_IMG = rs.getString(2);
				String post = rs.getString(4);
				int like_Cnt = rs.getInt(5);
				String comments = rs.getString(7);
				String TITLE = rs.getString(9);
				CommunityDTO cdto=new CommunityDTO(user_ID, user_IMG, post, like_Cnt, comments, TITLE);
         	    list.add(cdto);
			     
			}		
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		
		return list;
	}

		
	}



