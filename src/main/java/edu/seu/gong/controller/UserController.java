package edu.seu.gong.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import edu.seu.gong.service.UserService;
import edu.seu.gong.model.User;

@Controller
public class UserController {
	private static Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	private User user;

	@ModelAttribute
	public void setUser(User user) {
		this.user = user;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody String login(HttpServletRequest req, HttpServletResponse resp) {
		String nickName = req.getParameter("nickName");
		String password = req.getParameter("password");
		if (userService.login(nickName, password) == null) {
			return null;
		} else{
			logger.info(JSON.toJSONString(userService.login(nickName, password)));
			user = userService.login(nickName, password);
			if(user != null) return "index.jsp";
			else return "reginster.jsp";
		}
	}
}
