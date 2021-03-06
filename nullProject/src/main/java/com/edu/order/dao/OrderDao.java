package com.edu.order.dao;

import java.util.List;
import java.util.Map;

import com.edu.member.model.MemberDto;
import com.edu.order.model.OrderDto;
import com.edu.orderlist.model.OrderListDto;

public interface OrderDao {

	public void orderInsertOne(OrderDto orderDto);
	public OrderDto orderSelectOne(int memberNo);
	public List<OrderDto> orderSelectList(int start, int end);
	public int orderSelectTotalCount();
	public void cartToOrderList(int memberNo);
	public void cartDelete(int memberNo);
	public void memberCashUpdate(int memberNo, int cartTotalPrice);
	public List<OrderListDto> productCountSelectOne(int orderNo);
	public void productCountUpdate(int cartProductNo, int cartProductCount);
	
}
