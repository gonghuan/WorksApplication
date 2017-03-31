package edu.seu.gong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.seu.gong.model.WarehouseBook;
import edu.seu.gong.model.applicationfromstores;

public interface WarehouseBookMapper {
	public List<WarehouseBook> selectAllWarehouseBookWarn();	//选择预警的数据
	public List<applicationfromstores> selectAllPickupApplication();	//显示所有申请
	public int updateApplicationFromstores(@Param("id") String id,	//同意申请
			@Param("transport") String transport, @Param("transportPrice") double transportPrice);
}
