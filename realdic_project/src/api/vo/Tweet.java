package api.vo;

import java.util.Date;

public class Tweet {
	
	private String userName;
	private String userId;
	private Date createdAt;
	private String text;
	
	
	
	public Tweet() {
		super();
	}

	public Tweet(String userName, String userId, Date createdAt, String text) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.createdAt = createdAt;
		this.text = text;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Tweet [userName=" + userName + ", userId=" + userId + ", createdAt=" + createdAt + ", text=" + text
				+ "]";
	}

}
