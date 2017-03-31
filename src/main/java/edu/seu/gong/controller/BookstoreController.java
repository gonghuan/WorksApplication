package edu.seu.gong.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import edu.seu.gong.service.BookstoreService;

@Controller
public class BookstoreController {
	private static Logger logger = Logger.getLogger(BookstoreController.class);
	@Autowired
	private BookstoreService bookstoreService;
	
	@RequestMapping(value="applyForPickupOrReturn" , method = RequestMethod.POST)
	public @ResponseBody String applyForPickupOrReturn(HttpServletRequest request, HttpServletResponse response){
		String name = request.getParameter("bookname");
		String ISBN = bookstoreService.getISBNbyName(name);
		logger.info(JSON.toJSONString(name));
		logger.info(JSON.toJSONString(ISBN));
		return ISBN;
	}
	
	@RequestMapping(value="applyForPickup", method = RequestMethod.POST)
	public @ResponseBody boolean applyForPickup(HttpServletRequest request, HttpServletResponse response){
		String store_name = request.getParameter("store_name");
		String warehouse_name = request.getParameter("warehouse_name");
		String bookname = (String)request.getParameter("book_name");
		String ISBN = (String)request.getParameter("ISBN");
		int quantity = Integer.parseInt((String)request.getParameter("quantity"));
		String create_date = (String)request.getParameter("createDate");
		int a = bookstoreService.insertApplyForPickUp(store_name, warehouse_name, create_date, ISBN, bookname, quantity);
		logger.info(JSON.toJSONString(a));
		if(a >= 1) return true;
		return false;
	}
}
