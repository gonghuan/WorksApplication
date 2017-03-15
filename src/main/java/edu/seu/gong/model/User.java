package edu.seu.gong.model;

import org.springframework.stereotype.Component;

@Component
public class User {
	
	private int id;
	private String nickName;
	private String realName;
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName == null ? null : nickName.trim();
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName == null ? null : realName.trim();
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}
	
}
