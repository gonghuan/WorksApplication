package edu.seu.gong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import edu.seu.gong.model.WarehouseBook;
import edu.seu.gong.model.applicationfromstores;
import edu.seu.gong.service.WarehouseBookService;

@Controller
public class WarehouseController {
	private static Logger logger = Logger.getLogger(WarehouseController.class);
	@Autowired
	private WarehouseBookService warehouseBookService;
	
	@RequestMapping(value="listAllWarning", method = RequestMethod.GET)
	public @ResponseBody List<WarehouseBook> listAllWarning(){
		List<WarehouseBook> list = warehouseBookService.listAllWarning();
		logger.info(JSON.toJSONString(list));
		return list;
	}
	
	@RequestMapping(value="listAllPickupApplication", method = RequestMethod.GET)
	public @ResponseBody List<applicationfromstores> listAllPickupApplication(){
		List<applicationfromstores> list = warehouseBookService.listAllPickupApplication();
		logger.info(JSON.toJSONString(list));
		return list;
	}
	
	@RequestMapping(value="updateTransportInfo", method = RequestMethod.POST)
	public @ResponseBody boolean updateTransportInfo(HttpServletRequest request, HttpServletResponse response){
		String id = request.getParameter("id");
		String transport = request.getParameter("transport");
		double transportPrice = Double.parseDouble(request.getParameter("transportPrice"));
		int num = warehouseBookService.updateApplicationFromstores(id, transport, transportPrice);
		logger.info(JSON.toJSONString(num));
		if(num >= 1) return true;
		return false;
	}
}
