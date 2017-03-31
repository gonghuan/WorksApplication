package edu.seu.gong.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public @ResponseBody int login(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		User user = userService.login(id, password);
		if (user == null) {
			return 0;
		} else{
			logger.info(JSON.toJSONString(user));
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			return 1;
		}
	}
}
