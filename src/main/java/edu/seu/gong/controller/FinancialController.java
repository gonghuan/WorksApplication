package edu.seu.gong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import edu.seu.gong.model.applicationfromstores;
import edu.seu.gong.service.FinancialService;

@Controller
public class FinancialController {
	private static Logger logger = Logger.getLogger(FinancialController.class);
	@Autowired
	private FinancialService financialService;
	
	@RequestMapping(value="/listPickupApplicationFromStores", method = RequestMethod.POST)
	public @ResponseBody List<applicationfromstores> listPickupApplicationFromStores(){
		List<applicationfromstores> list = financialService.listAllPickupApplicationsFromStores();
		logger.info(JSON.toJSONString(list));
		return list;
	}
	
	@RequestMapping(value="/agreePickupApplicationFromStores", method=RequestMethod.POST)
	public @ResponseBody boolean agreePickupApplicationFromStores(@RequestParam("ids[]") String[] ids, HttpServletResponse response){
		logger.info(JSON.toJSONString(ids));
		for(int i = 0; i < ids.length; i++){
			int id = Integer.parseInt(ids[i]);
			int num = financialService.updatePickupApplicationfromStores(id);
			if(num <= 0) return false;
		}
		return true;
	}
}
