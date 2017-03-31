package edu.seu.gong.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.seu.gong.mapper.FinancialMapper;
import edu.seu.gong.model.applicationfromstores;
import edu.seu.gong.service.FinancialService;

@Service
public class FinancialServiceImpl implements FinancialService {

	@Autowired
	private FinancialMapper financialMapper;
	
	@Override
	public List<applicationfromstores> listAllPickupApplicationsFromStores() {
		// TODO Auto-generated method stub
		return financialMapper.selectAllPickupApplicationsFromStores();
	}

	@Override
	public int updatePickupApplicationfromStores(int id) {
		// TODO Auto-generated method stub
		return financialMapper.updatePickupApplicationfromStores(id);
	}

}
