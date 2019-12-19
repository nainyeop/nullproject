package com.edu.cart.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.cart.dao.CartDao;
import com.edu.cart.model.CartDto;

@Service
public class CartServiceImpl implements CartService{

	@Autowired CartDao cartDao;
	
	@Override
	public CartDto cartSelcetOne(int productNo, int memberNo) {
		// TODO Auto-generated method stub
		return cartDao.cartSelcetOne(productNo, memberNo);
	}
	
	@Override
	public void cartAdd(CartDto cartDto) {
		// TODO Auto-generated method stub
		cartDao.cartAdd(cartDto);
	}
	
	@Override
	public void cartUpdate(CartDto cartDto) {
		// TODO Auto-generated method stub
		cartDao.cartUpdate(cartDto);
	}
	
	@Override
	public List<CartDto> cartSelectList(int memberNo) {
		// TODO Auto-generated method stub
		return cartDao.cartSelectList(memberNo);
	}

	@Override
	public int cartTotalprice(int memberNo) {
		// TODO Auto-generated method stub
		return cartDao.cartTotalprice(memberNo);
	}

	@Override
	public void cartDelete(int cartNo) {
		// TODO Auto-generated method stub
		cartDao.cartDelete(cartNo);
	}

	@Override
	public void cartModify(CartDto cartDto) {
		// TODO Auto-generated method stub
		cartDao.cartModify(cartDto);
	}

	@Override
	public int cartTotalCount(int memberNo)	 {
		// TODO Auto-generated method stub
		return cartDao.cartTotalCount(memberNo);
	}

}
