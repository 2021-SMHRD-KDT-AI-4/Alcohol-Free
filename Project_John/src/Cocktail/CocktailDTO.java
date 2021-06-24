package Cocktail;

public class CocktailDTO {
	private String cocktail_id;
	private String cocktail_his;
	private String cocktail_IMG;
	private String recipe;
	private int alc_Vol;
	private String emotional_len;
	private String base;
	private String flavor;
	private String ingredient;
	
	public CocktailDTO(String cocktail_id, String cocktail_his, String cocktail_IMG, String recipe, int alc_Vol,
			String emotional_len, String base, String flavor, String ingredient) {
		super();
		this.cocktail_id = cocktail_id;
		this.cocktail_his = cocktail_his;
		this.cocktail_IMG = cocktail_IMG;
		this.recipe = recipe;
		this.alc_Vol = alc_Vol;
		this.emotional_len = emotional_len;
		this.base = base;
		this.flavor = flavor;
		this.ingredient = ingredient;
	}
	
	public CocktailDTO(String cocktail_id) {
		super();
		this.cocktail_id = cocktail_id;
	}

	public CocktailDTO(String cocktail_his, String recipe, int alc_Vol, String base, String flavor,
			String ingredient) {
		super();
		this.cocktail_his = cocktail_his;
		this.recipe = recipe;
		this.alc_Vol = alc_Vol;
		this.base = base;
		this.flavor = flavor;
		this.ingredient = ingredient;
	}



	public String getCocktail_id() {
		return cocktail_id;
	}

	public void setCocktail_id(String cocktail_id) {
		this.cocktail_id = cocktail_id;
	}

	public String getCocktail_his() {
		return cocktail_his;
	}

	public void setCocktail_his(String cocktail_his) {
		this.cocktail_his = cocktail_his;
	}

	public String getCocktail_IMG() {
		return cocktail_IMG;
	}

	public void setCocktail_IMG(String cocktail_IMG) {
		this.cocktail_IMG = cocktail_IMG;
	}

	public String getRecipe() {
		return recipe;
	}

	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}

	public int getAlc_Vol() {
		return alc_Vol;
	}

	public void setAlc_Vol(int alc_Vol) {
		this.alc_Vol = alc_Vol;
	}

	public String getEmotional_len() {
		return emotional_len;
	}

	public void setEmotional_len(String emotional_len) {
		this.emotional_len = emotional_len;
	}

	public String getBase() {
		return base;
	}

	public void setBase(String base) {
		this.base = base;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	
}
