package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WishlistDAO {


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
public int wish_insert(WishlistDTO wdto) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			String sql = "INSERT INTO WISHLIST VALUES(?,?,W_NUM.NEXTVAL,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, wdto.getUser_ID());
			psmt.setString(2, wdto.getCocktail_ID());
			psmt.setString(3, wdto.getA_1());
			
			
			cnt = psmt.executeUpdate();
			
			if(cnt > 0){
				System.out.println("찜값 넣기 성공");
			}else{
				System.out.println("찜값 넣기실패");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
	public ArrayList<WishlistDTO> wishlist(WishlistDTO wdto) {
	 ArrayList<WishlistDTO> list = new ArrayList<WishlistDTO>();
	
		
		try {
			getConnection();
//			
			String sql = "SELECT * FROM WISHLIST WHERE USER_ID =?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, wdto.getUser_ID());
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String user_id = rs.getString(1);
				String cocktail_id = rs.getString(2);
				String a_1 = rs.getString(4);
          	    WishlistDTO widto=new WishlistDTO(user_id, cocktail_id, a_1);
          	    list.add(widto);
			     
			}		
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		
		return list;
	}
	
	
}
