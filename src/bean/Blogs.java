package bean;

public class Blogs {
	private int bid;
	private String title;
	private java.sql.Timestamp posttime;
	private String type;
	private String content;	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getTitle() {
		return title;
	}	
	public void setTitle(String title) {
		this.title = title;
	}
	public java.sql.Timestamp getPosttime() {
		return posttime;
	}
	public void setPosttime(java.sql.Timestamp posttime) {
		this.posttime = posttime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
