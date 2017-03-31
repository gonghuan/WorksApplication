package edu.seu.gong.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.seu.gong.mapper.BookstoreMapper;
import edu.seu.gong.service.BookstoreService;

@Service
public class BookstoreServiceImpl implements BookstoreService {

	@Autowired
	private BookstoreMapper bookstoreMapper;
	
	@Override
	public String getISBNbyName(String name) {
		// TODO Auto-generated method stub
		return bookstoreMapper.getISBNbyName(name);
	}

	@Override
	public int insertApplyForPickUp(String store_name,String warehouse_name,
			String create_date, String ISBN,
			String bookname, int quantity) {
		// TODO Auto-generated method stub
		return bookstoreMapper.insertApplyForPickUp(store_name, warehouse_name, create_date, ISBN, bookname, quantity);
	}

}
