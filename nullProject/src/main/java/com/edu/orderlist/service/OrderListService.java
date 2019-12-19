package com.edu.orderlist.service;

import java.util.List;

import com.edu.orderlist.model.OrderListDto;

public interface OrderListService {
	
	public List<OrderListDto> orderListSelectOne(int memberNo);
}
