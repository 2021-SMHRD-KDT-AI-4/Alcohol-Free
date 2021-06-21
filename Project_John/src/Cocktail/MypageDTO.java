package Cocktail;

public class MypageDTO {
	private String user_ID;
	private String recommend;
	private String cocktail_ID;
	private int alcohol_capacity;
	private String alcohol_type;
	private String cocktail_IMG;
	
	public MypageDTO(String user_ID, String recommend, String cocktail_ID, int alcohol_capacity, String alcohol_type,
			String cocktail_IMG) {
		super();
		this.user_ID = user_ID;
		this.recommend = recommend;
		this.cocktail_ID = cocktail_ID;
		this.alcohol_capacity = alcohol_capacity;
		this.alcohol_type = alcohol_type;
		this.cocktail_IMG = cocktail_IMG;
	}

	public String getUser_ID() {
		return user_ID;
	}

	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	public String getCocktail_ID() {
		return cocktail_ID;
	}

	public void setCocktail_ID(String cocktail_ID) {
		this.cocktail_ID = cocktail_ID;
	}

	public int getAlcohol_capacity() {
		return alcohol_capacity;
	}

	public void setAlcohol_capacity(int alcohol_capacity) {
		this.alcohol_capacity = alcohol_capacity;
	}

	public String getAlcohol_type() {
		return alcohol_type;
	}

	public void setAlcohol_type(String alcohol_type) {
		this.alcohol_type = alcohol_type;
	}

	public String getCocktail_IMG() {
		return cocktail_IMG;
	}

	public void setCocktail_IMG(String cocktail_IMG) {
		this.cocktail_IMG = cocktail_IMG;
	}
	
	
}
