package edu.seu.gong.service;

public interface BookstoreService {
	public String getISBNbyName(String name);
	public int insertApplyForPickUp(String store_name,String warehouse_name,
			String create_date, String ISBN,
			String bookname, int quantity); 
}
