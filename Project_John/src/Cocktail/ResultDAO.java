package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultDAO {

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
public int result_insert(ResultDTO rdto) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			String sql = "INSERT INTO RESULT VALUES(R_NUM.NEXTVAL,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, rdto.getUser_ID());
			psmt.setString(2, rdto.getA_1());
			psmt.setString(3, rdto.getCocktail_id());
			
			
			cnt = psmt.executeUpdate();
			
			if(cnt > 0){
				System.out.println("결과값 넣기 성공");
			}else{
				System.out.println("결과값 넣기실패");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
	
}
