package edu.seu.gong.mapper;

import org.apache.ibatis.annotations.Param;

import edu.seu.gong.model.User;

public interface UserMapper {
	public User selectByNameAndPwd(@Param("nickName")String nickName,@Param("password")String password);
}
