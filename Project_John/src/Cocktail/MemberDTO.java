package Cocktail;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String gender;
	private int age;
	private String alcohol_type;
	private int alcohol_capacity;
	private String Favotite_Flavor;
	
	public MemberDTO(String id, String pw, String name, String gender, int age, String alcohol_type, int alcohol_capacity,
			 String Favotite_Flavor) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.alcohol_type = alcohol_type;
		this.alcohol_capacity = alcohol_capacity;
		this.Favotite_Flavor = Favotite_Flavor;
	}

	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	
	public MemberDTO(String id, String pw, String alcohol_type, int alcohol_capacity, String Favotite_Flavor) {
		super();
		this.id = id;
		this.pw = pw;
		this.alcohol_type = alcohol_type;
		this.alcohol_capacity = alcohol_capacity;
		this.Favotite_Flavor = Favotite_Flavor;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
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

	public String getFavotite_Flavor() {
		return Favotite_Flavor;
	}

	public void setFavotite_Flavor(String Favotite_Flavor) {
		this.Favotite_Flavor = Favotite_Flavor;
	}
	
	

}
