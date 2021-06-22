package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommunityDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String durl = "jdbc:oracle:thin:@localhost:1521:xe";
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
				like = rs.getInt("like_it");
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

			String sql = "UPDATE BOARD_LIKE SET LIKE_IT = LIKE_IT-1 WHERE NUM = ? ";
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
		
	}



