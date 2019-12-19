package com.edu.product.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.product.model.ProductDto;

public interface ProductService {

	public List<ProductDto> productSelectList(String searchOption, String keyword, int start, int end);
	public void productInsertOne(ProductDto productDto, MultipartHttpServletRequest mulRequest) throws Exception;
	
	public ProductDto productSelectOne(int productNo);
	
	public int productTotalCount(String searchOption, String keyword);
	
	public int productUpdateOne(ProductDto productDto, MultipartHttpServletRequest mulRequest, int fileIdx) throws Exception;
	
	public void productDeleteCtr(int productNo); 
	
}
