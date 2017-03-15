package edu.seu.gong.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.seu.gong.mapper.UserMapper;
import edu.seu.gong.model.User;
import edu.seu.gong.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(String nickName, String password) {
		// TODO Auto-generated method stub
		return userMapper.selectByNameAndPwd(nickName, password);
	}

}
