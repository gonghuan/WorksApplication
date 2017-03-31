package edu.seu.gong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@RequestMapping(value="/warehouseWarning", produces = "text/html; charset=utf-8")
	public ModelAndView warehouseMapping()
	{
		ModelAndView view = new ModelAndView("warehouseWarning");  
        return view;  
	}
	
	@RequestMapping(value="/index")
	public ModelAndView  index(){
		ModelAndView view = new ModelAndView("index");  
        return view;
	}
	
	@RequestMapping(value="/login", produces = "text/html; charset=utf-8")
	public ModelAndView  login(){
		ModelAndView view = new ModelAndView("login");  
        return view;
	}
	
	@RequestMapping(value="/register", produces = "text/html; charset=utf-8")
	public ModelAndView  register(){
		ModelAndView view = new ModelAndView("register");  
        return view;
	}
	
	@RequestMapping(value="/applyForPickupOrReturn")
	public String applyForPickupOrReturn(){
		return "applyForPickupOrReturn";
	}
	
	@RequestMapping(value="/pickupApplication", produces = "text/html; charset=utf-8")
	public ModelAndView pickupApplication(){
		ModelAndView view = new ModelAndView("pickupApplication");  
        return view;
	}
	
	@RequestMapping(value="/applyForPickupFromStores", produces = "text/html; charset=utf-8")
	public ModelAndView applyForPickupFromStore(){
		ModelAndView view = new ModelAndView("applyForPickupFromStores");  
        return view;
	}
	
	@RequestMapping(value="/salesReport", produces = "text/html; charset=utf-8")
	public ModelAndView salesReport(){
		ModelAndView view = new ModelAndView("salesReport");
		return view;
	}
}
