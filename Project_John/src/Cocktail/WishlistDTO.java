package Cocktail;

public class WishlistDTO {
	private String user_ID;
	private String cocktail_ID;
	private int w_Num;
	private String a_1;
	
	public WishlistDTO(String user_ID, String cocktail_ID, int w_Num, String a_1) {
		super();
		this.user_ID = user_ID;
		this.cocktail_ID = cocktail_ID;
		this.w_Num = w_Num;
		this.a_1 = a_1;
	}

	public String getUser_ID() {
		return user_ID;
	}

	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}

	public String getCocktail_ID() {
		return cocktail_ID;
	}

	public void setCocktail_ID(String cocktail_ID) {
		this.cocktail_ID = cocktail_ID;
	}

	public int getW_Num() {
		return w_Num;
	}

	public void setW_Num(int w_Num) {
		this.w_Num = w_Num;
	}

	public String getA_1() {
		return a_1;
	}

	public void setA_1(String a_1) {
		this.a_1 = a_1;
	}
	
	
}
