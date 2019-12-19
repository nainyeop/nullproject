package com.edu.product.model;

import java.util.Date;

public class ProductDto {

	private int productNo = 0;
	private String productName = "";
	private int productPrice = 0;
	private int productCostprice = 0;
	private int productStock = 0;
	private int productSalseVolume = 0;
	private String productDetail = "";
	private Date productCreDate = null;
	private Date productModDate = null;
	private String productCategory = "p";
	private int productState = 1;
	private int imgIdx = 0;
	private String storedFileName = "";
	private String originalFileName = "";
	
	
	public ProductDto() {
		super();
	}

	public ProductDto(int productNo, String productName, int productPrice, int productStock) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productStock = productStock;
	}

	public ProductDto(int productNo, String productName, int productPrice, int productCostprice, int productStock,
			int productSalseVolume, String productDetail, String originalFileName, String storedFileName) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productCostprice = productCostprice;
		this.productStock = productStock;
		this.productSalseVolume = productSalseVolume;
		this.productDetail = productDetail;
		this.originalFileName = originalFileName;
		this.storedFileName = storedFileName;
	}

	public ProductDto(int productNo, String productName, int productPrice, int productStock, String productCategory,
			int productState, String storedFileName) {
		super();

		this.productName = productName;
		this.productPrice = productPrice;
		this.productStock = productStock;
		this.storedFileName = storedFileName;
	}

	public String getStoredFileName() {
		return storedFileName;
	}

	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}

	public int getProductNo() {
		return productNo;
	}


	public void setProductNo(int productNo) {
		this.productNo = productNo;
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


	public int getProductCostprice() {
		return productCostprice;
	}


	public void setProductCostprice(int productCostprice) {
		this.productCostprice = productCostprice;
	}


	public int getProductStock() {
		return productStock;
	}


	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}


	public int getProductSalseVolume() {
		return productSalseVolume;
	}


	public void setProductSalseVolume(int productSalseVolume) {
		this.productSalseVolume = productSalseVolume;
	}


	public String getProductDetail() {
		return productDetail;
	}


	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}


	public Date getProductCreDate() {
		return productCreDate;
	}


	public void setProductCreDate(Date productCreDate) {
		this.productCreDate = productCreDate;
	}


	public Date getProductModDate() {
		return productModDate;
	}


	public void setProductModDate(Date productModDate) {
		this.productModDate = productModDate;
	}


	public String getProductCategory() {
		return productCategory;
	}


	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}


	public int getProductState() {
		return productState;
	}


	public void setProductState(int productState) {
		this.productState = productState;
	}

	public int getImgIdx() {
		return imgIdx;
	}

	public void setImgIdx(int imgIdx) {
		this.imgIdx = imgIdx;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	@Override
	public String toString() {
		return "ProductDto [productNo=" + productNo + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productCostprice=" + productCostprice + ", productStock=" + productStock + ", productSalseVolume="
				+ productSalseVolume + ", productDetail=" + productDetail + ", productCreDate=" + productCreDate
				+ ", productModDate=" + productModDate + ", productCategory=" + productCategory + ", productState="
				+ productState + ", storedFileName=" + storedFileName + ", originalFileName=" + originalFileName + "]";
	}

	
	
	
	

}
	
	