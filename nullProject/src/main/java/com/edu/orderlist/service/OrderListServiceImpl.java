package com.edu.orderlist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.img.model.FileDto;
import com.edu.orderlist.dao.OrderListDao;
import com.edu.orderlist.model.OrderListDto;

@Service
public class OrderListServiceImpl implements OrderListService{

	@Autowired
	public OrderListDao orderListDao;
	public FileDto fileDto;
	
	@Override
	public List<OrderListDto> orderListSelectOne(int memberNo) {
		// TODO Auto-generated method stub
		return orderListDao.orderListSelectOne(memberNo);
	}

}
