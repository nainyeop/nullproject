package com.edu.order.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.order.model.OrderDto;
import com.edu.orderlist.model.OrderListDto;

@Repository
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.order.";
	
	@Override
	public List<OrderDto> orderSelectList(int start, int end){
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList(namespace + "orderSelectList", map);
	}
	
	@Override
	public OrderDto orderSelectOne(int memberNo) {
		
		return sqlSession.selectOne(namespace + "orderSelectOne", memberNo);
		
	}
	
	@Override
	public int orderSelectTotalCount() {
		
		return sqlSession.selectOne(namespace + "orderSelectTotalCount");
		
	}
	
	@Override
	public void orderInsertOne(OrderDto orderDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "orderInsertOne", orderDto);
		
	}

	@Override
	public void cartToOrderList(int memberNo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "cartToOrderList", memberNo);
	}

	@Override
	public void cartDelete(int memberNo) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + "cartDelete", memberNo);
	}

	@Override
	public void memberCashUpdate(int memberNo, int cartTotalPriceCal) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("memberNo", memberNo);
		map.put("cartTotalPriceCal", cartTotalPriceCal);
		
		
		sqlSession.update(namespace + "memberCashUpdate", map);
	}

	@Override
	public void productCountUpdate(int cartProductNo, int cartProductCount) {
		// TODO Auto-generated method stub
		
		Map<String, Integer> map = new HashMap<String, Integer>();

		Integer productNo = Integer.valueOf(cartProductNo);
		Integer productCount = Integer.valueOf(cartProductCount);
		
		map.put("productNo", productNo);
		map.put("cartProductCount", productCount);
		
//		sqlSession.update("com.edu.product.productCountUpdate", map);
		sqlSession.update(namespace + "productCountUpdate", map);
	}

	@Override
	public List<OrderListDto> productCountSelectOne(int orderNo) {
		// TODO Auto-generated method stub

		return sqlSession.selectList(namespace +"productCountSelectOne", orderNo);
	}


	
	
}
