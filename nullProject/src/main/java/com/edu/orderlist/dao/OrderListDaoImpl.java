package com.edu.orderlist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.orderlist.model.OrderListDto;

@Repository
public class OrderListDaoImpl implements OrderListDao{

	@Autowired
	SqlSessionTemplate sqlSession;

	String namespace = "com.edu.order.";

	
	@Override
	public List<OrderListDto> orderListSelectOne(int memberNo){
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "cartSelectOne", memberNo);
	}

}
