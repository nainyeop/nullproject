package com.edu.img.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.img.model.FileDto;

@Repository
public class FileDaoImpl implements FileDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	String namespace = "com.edu.product.";

	@Override
	public FileDto fileSelectOne(int productNo) {
		// TODO Auto-generated method stub
		
		
		return null;
	}

	
	
	
}
