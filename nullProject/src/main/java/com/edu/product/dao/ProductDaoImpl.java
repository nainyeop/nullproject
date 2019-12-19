package com.edu.product.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.img.model.FileDto;
import com.edu.product.model.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	String namespace = "com.edu.product.";

	@Override
	public List<ProductDto> productSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);

		return sqlSession.selectList(namespace + "productSelectList", map);
	}
	
	@Override
	public int productInsertOne(ProductDto productDto) {
		// TODO Auto-generated method stub

		return sqlSession.insert(namespace + "productInsertOne", productDto);
	
	}

	@Override
	public void insertFile(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		sqlSession.insert(namespace + "insertFile", map);
	}

	@Override
	public List<Map<String, Object>> fileSelectList(int no) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList(namespace + "fileSelectList", no);
	}

	@Override
	public int fileDelete(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace + "fileDelete", no);
	}

	@Override
	public FileDto fileSelectStoredFileName(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "fileSelectStoredFileName", no);
	}

	@Override
	public int productTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + "productTotalCount", map);
	}

	@Override
	public ProductDto productSelectOne(int productNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "productSelectOne", productNo);
	}

	@Override
	public int productUpdateOne(ProductDto productDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.update(namespace  + "productUpdateOne", productDto);
	}

	@Override
	public void fileUpdateOne(Map<String, Object> map) {
		// TODO Auto-generated method stub

		sqlSession.update(namespace  + "fileUpdateOne", map);
	}

	@Override
	public void productDeleteCtr(int productNo) {
		// TODO Auto-generated method stub
		
		sqlSession.update(namespace + "productDeleteCtr", productNo);
	}

	
	
	
	
}
