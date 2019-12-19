package com.edu.cart.dao;

import java.util.List;
import java.util.Map;

import com.edu.cart.model.CartDto;


public interface CartDao {

	public CartDto cartSelcetOne(int productNo, int memberNo);
	public void cartAdd(CartDto cartDto);
	public void cartUpdate (CartDto cartDto);
	public List<CartDto> cartSelectList(int memberNo); 
	public int cartTotalprice(int memberNo);
	public void cartDelete(int cartNo);
	public void cartModify(CartDto cartDto);
	public int cartTotalCount(int memberNo);	
	
	
}
