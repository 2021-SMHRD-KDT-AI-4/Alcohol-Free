package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class CocktailDAO {
		
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
		
		public int recommend(CocktailDTO dto) {
			int cnt = 0;
			
			try {
				getConnection();
				String sql = "SELECT Cocktail_ID, Emotional_Len, Cocktail_IMG FROM COCKTAIL WHERE Cocktail_ID = (SELECT ? FROM RESULT)";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getCocktail_id());
				
				rs = psmt.executeQuery();
				
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			
			return cnt;
		}
		
		
		
	}

