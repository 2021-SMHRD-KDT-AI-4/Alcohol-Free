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
	      public String Search_cocktail(String Search_content) {
	            
	          
	          try {
	             getConnection();
	             String sql = "SELECT * FROM COCKTAIL WHERE COCKTAIL_ID=?";
	             
	             psmt = conn.prepareStatement(sql);
	             psmt.setString(1,Search_content);
	             
	             rs = psmt.executeQuery();
	             if(rs.next()) {
	                String cocktail_id = rs.getString(1);
	                
	             }
	          
	          }catch (SQLException e) {
	             e.printStackTrace();
	          }finally {
	             getClose();
	          }
	          
	          return cocktail_id;
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
		
		public CocktailDTO C_Info(String id) {
			CocktailDTO cinfo = null;
			
			try {
				getConnection();
				String sql = "SELECT cocktail_IMG Cocktail_ID, Emotional_Len, Alc_Vol, Flavor, Base, Recipe,Ingredient,Cocktail_HIS FROM COCKTAIL WHERE Cocktail_ID = (SELECT Cocktail_ID FROM RESULT)";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					String cocktail_IMG = rs.getString(1);
					String Cocktail_ID = rs.getString(2);
					String Emotional_Len = rs.getString(3);
					int alc_Vol = rs.getInt(4);
					String base = rs.getString(5);
					String flavor = rs.getString(6);
					String ingredient = rs.getString(7);
					String recipe = rs.getString(8);
					String cocktail_his = rs.getString(9);
													
					cinfo = new CocktailDTO(cocktail_IMG, Cocktail_ID, Emotional_Len, alc_Vol, base, flavor, ingredient, recipe, cocktail_his);
							
				}		
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			
			return cinfo;
		}
		
		
		
	}

