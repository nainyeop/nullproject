package com.edu.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.cart.model.CartDto;

@Repository
public class CartDaoImpl implements CartDao{

	@Autowired
	SqlSessionTemplate sqlSession;

	String namespace = "com.edu.cart.";

		
	@Override
	public CartDto cartSelcetOne(int productNo, int memberNo) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("productNo", productNo);
		map.put("memberNo", memberNo);
		
		return sqlSession.selectOne(namespace + "cartSelcetOne", map);
	}



	@Override
	public void cartAdd(CartDto cartDto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + "cartAdd", cartDto);
		
	}



	@Override
	public void cartUpdate(CartDto cartDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "cartUpdate", cartDto);
	}



	@Override
	public List<CartDto> cartSelectList(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "cartSelectList", memberNo);
	}



	@Override
	public int cartTotalprice(int memberNo) {
		// TODO Auto-generated method stub

		return sqlSession.selectOne(namespace + "cartTotalprice", memberNo);
	}



	@Override
	public void cartDelete(int cartNo) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + "cartDelete", cartNo);
		
	}



	@Override
	public void cartModify(CartDto cartDto) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + "cartModify", cartDto);
	}



	@Override
	public int cartTotalCount(int memberNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "cartTotalCount", memberNo);
	}

}
