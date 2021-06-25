package Cocktail;

public class CommunityDTO {
	private String user_ID;
	private String user_IMG;
	private int post_Num;
	private String post;
	private int like_Cnt;
	private int comment_Num;
	private String comments;
	private int write_Date;
	private String TITLE;
	
	
	

	

	



	public CommunityDTO(String user_ID, String user_IMG, String post, int like_Cnt, String comments, String TITLE) {
		super();
		this.user_ID = user_ID;
		this.user_IMG = user_IMG;
		this.post = post;
		this.like_Cnt = like_Cnt;
		this.comments = comments;
		this.TITLE = TITLE;
	}



	public CommunityDTO(String user_ID, String user_IMG, int post_Num, String post, int like_Cnt, int comment_Num,
			String comments, int write_Date, int num, String TITLE) {
		super();
		this.user_ID = user_ID;
		this.user_IMG = user_IMG;
		this.post_Num = post_Num;
		this.post = post;
		this.like_Cnt = like_Cnt;
		this.comment_Num = comment_Num;
		this.comments = comments;
		this.write_Date = write_Date;
		this.TITLE = TITLE;
	}



	public String getTITLE() {
		return TITLE;
	}



	public void setTITLE(String TITLE) {
		this.TITLE = TITLE;
	}



	public String getPost() {
		return post;
	}



	public void setPost(String post) {
		this.post = post;
	}



	public String getUser_ID() {
		return user_ID;
	}

	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}

	public String getUser_IMG() {
		return user_IMG;
	}

	public void setUser_IMG(String user_IMG) {
		this.user_IMG = user_IMG;
	}

	public int getPost_Num() {
		return post_Num;
	}

	public void setPost_Num(int post_Num) {
		this.post_Num = post_Num;
	}

	public int getLike_Cnt() {
		return like_Cnt;
	}

	public void setLike_Cnt(int like_Cnt) {
		this.like_Cnt = like_Cnt;
	}

	public int getComment_Num() {
		return comment_Num;
	}

	public void setComment_Num(int comment_Num) {
		this.comment_Num = comment_Num;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public int getWrite_Date() {
		return write_Date;
	}

	public void setWrite_Date(int write_Date) {
		this.write_Date = write_Date;
	}

	
	
	
	
}
