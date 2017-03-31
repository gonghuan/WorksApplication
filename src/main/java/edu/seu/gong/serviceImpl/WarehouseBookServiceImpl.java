package edu.seu.gong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.seu.gong.mapper.WarehouseBookMapper;
import edu.seu.gong.model.WarehouseBook;
import edu.seu.gong.model.applicationfromstores;
import edu.seu.gong.service.WarehouseBookService;
@Service
public class WarehouseBookServiceImpl implements WarehouseBookService {

	@Autowired
	private WarehouseBookMapper warehouseBookMapper;
	
	@Override
	public List<WarehouseBook> listAllWarning() {
		// TODO Auto-generated method stub
		return warehouseBookMapper.selectAllWarehouseBookWarn();
	}

	@Override
	public List<applicationfromstores> listAllPickupApplication() {
		// TODO Auto-generated method stub
		return warehouseBookMapper.selectAllPickupApplication();
	}

	@Override
	public int updateApplicationFromstores(String id, String transport, double transportPrice) {
		// TODO Auto-generated method stub
		return warehouseBookMapper.updateApplicationFromstores(id, transport, transportPrice);
	}
	
	

}
