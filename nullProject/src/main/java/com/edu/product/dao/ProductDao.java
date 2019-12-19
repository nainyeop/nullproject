package com.edu.product.dao;

import java.util.List;
import java.util.Map;

import com.edu.img.model.FileDto;
import com.edu.member.model.MemberDto;
import com.edu.product.model.ProductDto;

public interface ProductDao {

	
	public List<ProductDto> productSelectList(String searchOption, String keyword, int start, int end);
	
	public FileDto fileSelectStoredFileName(int no);
	public int productInsertOne(ProductDto productDto);
	public void insertFile(Map<String, Object> map);
	public List<Map<String, Object>> fileSelectList(int no);
	public int fileDelete(int no);
	public void fileUpdateOne(Map<String, Object> map);
	public int productTotalCount(String searchOption, String keyword);

	public ProductDto productSelectOne(int productNo);
	public int productUpdateOne(ProductDto productDto);
	public void productDeleteCtr(int productNo); 
	
}
