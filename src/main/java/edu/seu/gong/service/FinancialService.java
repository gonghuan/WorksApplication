package edu.seu.gong.service;

import java.util.List;

import edu.seu.gong.model.applicationfromstores;

public interface FinancialService {
	public List<applicationfromstores> listAllPickupApplicationsFromStores();
	public int updatePickupApplicationfromStores(int id);
}
