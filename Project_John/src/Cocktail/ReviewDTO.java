package Cocktail;

public class ReviewDTO {

	private String TITLE;
	private String Input_file;
	private String Content;
	
	public ReviewDTO(String TITLE, String Input_file, String Content) {
		super();
		
		this.setTITLE(TITLE);
		this.setInput_file(Input_file);
		this.setContent(Content);
		
		
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getInput_file() {
		return Input_file;
	}

	public void setInput_file(String input_file) {
		Input_file = input_file;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	
	
}