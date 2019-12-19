package com.edu.orderlist.dao;

import java.util.List;

import com.edu.orderlist.model.OrderListDto;

public interface OrderListDao {

	public List<OrderListDto> orderListSelectOne(int memberNo);
	
}
