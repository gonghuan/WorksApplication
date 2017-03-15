package edu.seu.gong.service;

import edu.seu.gong.model.User;

public interface UserService {
	public User login(String nickName, String password);
}
