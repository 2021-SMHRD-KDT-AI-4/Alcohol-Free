package Cocktail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Cocktail.MemberDTO;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null){
				rs.close();
				}	
			if (psmt != null) {
				psmt.close();
				}
			if (conn != null) {
				conn.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}		
	}
	
	public int join(MemberDTO dto) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			String sql = "INSERT INTO W_USER VALUES(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getGender());
			psmt.setInt(5, dto.getAge());
			psmt.setInt(6, dto.getAlcohol_capacity());
			psmt.setString(7, dto.getAlcohol_type());
			psmt.setString(8, dto.getFlavor());
			
			cnt = psmt.executeUpdate();
			
			if(cnt > 0){
				System.out.println("회원가입 성공");
			}else{
				System.out.println("회원가입 실패");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;
		
		try {
			getConnection();
			
			String sql = "SELECT * FROM W_USER WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();	
		
			if(rs.next()){
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				int age = rs.getInt(5);
				int alcohol_capacity = rs.getInt(6);
				String alcohol_type = rs.getString(7);
				String flavor = rs.getString(8);
												
				info = new MemberDTO(id, pw, name, gender, age, alcohol_capacity, alcohol_type, flavor);
						
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
		    }
			return info;
	}
	
	public int update(MemberDTO dto) {
		
		int cnt = 0;
		
		try {
			getConnection();
		
			String sql = "UPDATE W_USER SET User_PW = ?, Alcohol_capacity = ?, Alcohol_type = ?, FLAVOR = ? WHERE User_ID = ? AND USER_PW";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPw());
			psmt.setInt(2, dto.getAlcohol_capacity());
			psmt.setString(3, dto.getAlcohol_type());
			psmt.setString(4, dto.getFlavor());
			psmt.setNString(5, dto.getId());
			psmt.setNString(6, dto.getPw());
			
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public boolean idCheck(String id) {
		boolean check = false;
		
		try {
			getConnection();
			
			String sql = "SELECT * FROM W_USER WHERE ID = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();	
		
			if(rs.next()){
				check = true;
			}else {
				check = false;
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
		    }
			return check;	
	}
	
	
}
