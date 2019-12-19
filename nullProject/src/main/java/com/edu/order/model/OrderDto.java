package com.edu.order.model;

import java.util.Date;

public class OrderDto {
	
	
    private int orderNo = 0;        
    private int memberNo = 0;          
    private Date orderDate = null;               
    private int cartTotalPrice = 0;     
    private String orderMemberName = "";  
    private String orderEmail = "";     
    private String orderPhone = "";     
    private String orderAddress = "";   
    private String orderRequirement = "";
    private String orderCategory = "";  
    private int orderState = 0;



	public OrderDto() {
		super();
	}
	
	
	public OrderDto(int orderNo, int memberNo, Date orderDate, int cartTotalPrice, String orderMemberName,
			String orderEmail, String orderPhone, String orderAddress, String orderRequirement, String orderCategory,
			int orderState) {
		super();
		this.orderNo = orderNo;
		this.memberNo = memberNo;
		this.orderDate = orderDate;
		this.cartTotalPrice = cartTotalPrice;
		this.orderMemberName = orderMemberName;
		this.orderEmail = orderEmail;
		this.orderPhone = orderPhone;
		this.orderAddress = orderAddress;
		this.orderRequirement = orderRequirement;
		this.orderCategory = orderCategory;
		this.orderState = orderState;
	}



	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getCartTotalPrice() {
		return cartTotalPrice;
	}

	public void setCartTotalPrice(int cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
	}

	public String getOrderMemberName() {
		return orderMemberName;
	}

	public void setOrderMemberName(String orderMemberName) {
		this.orderMemberName = orderMemberName;
	}

	public String getOrderEmail() {
		return orderEmail;
	}

	public void setOrderEmail(String orderEmail) {
		this.orderEmail = orderEmail;
	}

	public String geStOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getOrderRequirement() {
		return orderRequirement;
	}

	public void setOrderRequirement(String orderRequirement) {
		this.orderRequirement = orderRequirement;
	}

	public String getOrderCategory() {
		return orderCategory;
	}

	public void setOrderCategory(String orderCategory) {
		this.orderCategory = orderCategory;
	}

	public int getOrderState() {
		return orderState;
	}

	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	
    

}
