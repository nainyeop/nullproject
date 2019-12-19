package com.edu.orderlist.model;

public class OrderListDto {

	
    private int cartProductNo = 0;
    private int cartCount = 0;
    private String productName = "";
    private int productPrice = 0;
    private int cartMemberNo = 0;
	
	public OrderListDto() {
		super();
	}

	public OrderListDto(int cartProductNo, int cartCount) {
		super();
		this.cartProductNo = cartProductNo;
		this.cartCount = cartCount;
	}

	public OrderListDto(int cartProductNo, int cartCount, String productName, int productPrice, int cartMemberNo) {
		super();
		this.cartProductNo = cartProductNo;
		this.cartCount = cartCount;
		this.productName = productName;
		this.productPrice = productPrice;
		this.cartMemberNo = cartMemberNo;
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

	public int getCartCount() {
		return cartCount;
	}

	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	
							
							
							
	
	
	 
	 
	 
	 
	             
	
	
	
}
