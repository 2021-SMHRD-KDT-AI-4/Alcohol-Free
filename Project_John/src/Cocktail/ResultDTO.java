package Cocktail;

public class ResultDTO {
	private int r_Num;
	private String user_ID;
	private String a_1;
	private String recommend;
	
	public ResultDTO(int r_Num, String user_ID, String a_1, String recommend) {
		super();
		this.r_Num = r_Num;
		this.user_ID = user_ID;
		this.a_1 = a_1;
		this.recommend = recommend;
	}

	public int getR_Num() {
		return r_Num;
	}

	public void setR_Num(int r_Num) {
		this.r_Num = r_Num;
	}

	public String getUser_ID() {
		return user_ID;
	}

	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}

	public String getA_1() {
		return a_1;
	}

	public void setA_1(String a_1) {
		this.a_1 = a_1;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	
	
}
