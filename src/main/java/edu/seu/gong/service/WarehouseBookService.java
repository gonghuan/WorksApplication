package edu.seu.gong.service;

import java.util.List;

import edu.seu.gong.model.WarehouseBook;
import edu.seu.gong.model.applicationfromstores;

public interface WarehouseBookService {
	public List<WarehouseBook> listAllWarning();
	public List<applicationfromstores> listAllPickupApplication();
	public int updateApplicationFromstores(String id, String transport, double transportPrice);
}
