package edu.seu.gong.mapper;

import java.util.List;

import edu.seu.gong.model.applicationfromstores;

public interface FinancialMapper {
	public List<applicationfromstores> selectAllPickupApplicationsFromStores();
	public int updatePickupApplicationfromStores(int id);
}
