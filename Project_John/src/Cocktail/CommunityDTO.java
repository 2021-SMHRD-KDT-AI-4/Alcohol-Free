package Cocktail;

public class CommunityDTO {
	private String user_ID;
	private String user_IMG;
	private int post_Num;
	private int like_Cnt;
	private int comment_Num;
	private String comments;
	private int write_Date;
	private int num;
	
	public CommunityDTO(String user_ID, String user_IMG, int post_Num, int like_Cnt, int comment_Num, String comments,
			int write_Date, int num) {
		super();
		this.user_ID = user_ID;
		this.user_IMG = user_IMG;
		this.post_Num = post_Num;
		this.like_Cnt = like_Cnt;
		this.comment_Num = comment_Num;
		this.comments = comments;
		this.write_Date = write_Date;
		this.num = num;
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	
	
	
}
