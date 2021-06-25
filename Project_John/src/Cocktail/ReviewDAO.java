package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReviewDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	int cnt = 0;

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
	
	public int insert(ReviewDTO dto) {

		
		try {
	         getConnection();
	         String sql = "INSERT INTO REVIEW VALUES(?,?,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, dto.getTITLE());
	         psmt.setString(2, dto.getInput_file());
	         psmt.setString(3, dto.getContent());
	         
	         cnt = psmt.executeUpdate();
	         
	      }catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         getClose();
	      }
	      
	      return cnt;
	   }
}
