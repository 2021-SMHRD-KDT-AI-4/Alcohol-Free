package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MypageDAO {

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
	
}
