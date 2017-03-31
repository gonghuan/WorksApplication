package edu.seu.gong.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface BookstoreMapper {
	public String getISBNbyName(String name);
	public int insertApplyForPickUp(@Param("store_name") String store_name, @Param("warehouse_name") String warehouse_name,
			@Param("create_date") String create_date, @Param("ISBN") String ISBN,
			@Param("bookname") String bookname, @Param("quantity") int quantity);
}
