package com.edu.cart.model;

public class CartDto {

	private int cartNo = 0;
	private int cartMemberNo = 0;
	private int cartProductNo = 0;
	private int cartProductCount = 0;
	private int cartTotalPrice = 0;
	private String cartMemberName = "";
	private String cartProductName = "";
	private int cartProductPrice = 0;
	private int cartPrice = 0;
	private int productStork = 0; 
	
	
	public CartDto() {
		super();
	}
	
	public CartDto(int cartTotalPrice) {
		super();
		this.cartTotalPrice = cartTotalPrice;
	}
	
	public CartDto(int cartMemberNo, int cartProductNo, int cartProductCount) {
		super();
		this.cartMemberNo = cartMemberNo;
		this.cartProductNo = cartProductNo;
		this.cartProductCount = cartProductCount;
	}

	public CartDto(int cartNo, int cartMemberNo, int cartProductNo, int cartProductCount, int cartTotalPrice) {
		super();
		this.cartNo = cartNo;
		this.cartMemberNo = cartMemberNo;
		this.cartProductNo = cartProductNo;
		this.cartProductCount = cartProductCount;
		this.cartTotalPrice = cartTotalPrice;
	}
	
	public CartDto(int cartNo, int cartMemberNo, int cartProductNo, int cartProductCount, int cartTotalPrice,
			String cartMemberName, String cartProductName, int cartProductPrice, int cartPrice) {
		super();
		this.cartNo = cartNo;
		this.cartMemberNo = cartMemberNo;
		this.cartProductNo = cartProductNo;
		this.cartProductCount = cartProductCount;
		this.cartTotalPrice = cartTotalPrice;
		this.cartMemberName = cartMemberName;
		this.cartProductName = cartProductName;
		this.cartProductPrice = cartProductPrice;
		this.cartPrice = cartPrice;
	}

	public CartDto(int cartNo, int cartMemberNo, int cartProductNo, int cartProductCount, int cartTotalPrice,
			String cartMemberName, String cartProductName, int cartProductPrice, int cartPrice, int productStork) {
		super();
		this.cartNo = cartNo;
		this.cartMemberNo = cartMemberNo;
		this.cartProductNo = cartProductNo;
		this.cartProductCount = cartProductCount;
		this.cartTotalPrice = cartTotalPrice;
		this.cartMemberName = cartMemberName;
		this.cartProductName = cartProductName;
		this.cartProductPrice = cartProductPrice;
		this.cartPrice = cartPrice;
		this.productStork = productStork;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getCartMemberNo() {
		return cartMemberNo;
	}

	public void setCartMemberNo(int cartMemberNo) {
		this.cartMemberNo = cartMemberNo;
	}

	public int getCartProductNo() {
		return cartProductNo;
	}

	public void setCartProductNo(int cartProductNo) {
		this.cartProductNo = cartProductNo;
	}

	public int getCartProductCount() {
		return cartProductCount;
	}

	public void setCartProductCount(int cartProductCount) {
		this.cartProductCount = cartProductCount;
	}

	public int getCartTotalPrice() {
		return cartTotalPrice;
	}

	public void setCartTotalPrice(int cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
	}

	public String getCartMemberName() {
		return cartMemberName;
	}

	public void setCartMemberName(String cartMemberName) {
		this.cartMemberName = cartMemberName;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}

	public int getCartProductPrice() {
		return cartProductPrice;
	}

	public void setCartProductPrice(int cartProductPrice) {
		this.cartProductPrice = cartProductPrice;
	}

	public int getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}

	public int getProductStork() {
		return productStork;
	}

	public void setProductStork(int productStork) {
		this.productStork = productStork;
	}
	
	




	
	
	
	
}
