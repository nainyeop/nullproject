package com.edu.order.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.order.controller.OrderController;
import com.edu.order.dao.OrderDao;
import com.edu.order.model.OrderDto;
import com.edu.orderlist.model.OrderListDto;

@Service
public class OrderServiceImpl implements OrderService{

	private static final Logger Log = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	public OrderDao orderDao;

	@Override
	public Map<String, Object> orderSelectOne(int memberNo) {

		Map<String, Object> resultMap = new HashMap<String, Object>();

		OrderDto orderDto = orderDao.orderSelectOne(memberNo);
		resultMap.put("orderDto", orderDto);

		return resultMap;
	}
	
	@Override
	public List<OrderDto> orderSelectList(int start, int end) {
		return orderDao.orderSelectList(start, end);
	}

	@Override
	public int orderSelectTotalCount() {
		// TODO Auto-generated method stub
		return orderDao.orderSelectTotalCount();
	}

	@Override
	public void orderInsertOne(OrderDto orderDto) {
		orderDao.orderInsertOne(orderDto);
	}
	
	@Override
	public void cartToOrderList(int memberNo) {
		// TODO Auto-generated method stub
		orderDao.cartToOrderList(memberNo);
	}

	@Override
	public void cartDelete(int memberNo) {
		// TODO Auto-generated method stub
		orderDao.cartDelete(memberNo);
	}

	@Override
	public void memberCashUpdate(int memberNo, int cartTotalPrice) {
		// TODO Auto-generated method stub
		orderDao.memberCashUpdate(memberNo, cartTotalPrice);
	}

	
	@Override
	public void productCountUpdate(int cartProductNo, int cartProductCount) {
		// TODO Auto-generated method stub
		
	
			
			orderDao.productCountUpdate(cartProductNo, cartProductCount);
			
		
	}

	@Override
	public List<OrderListDto> productCountSelectOne(int orderNo) {
		// TODO Auto-generated method stub
		
		return orderDao.productCountSelectOne(orderNo);
	}
	
}
