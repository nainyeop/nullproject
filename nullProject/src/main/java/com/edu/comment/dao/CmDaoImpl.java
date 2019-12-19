package com.edu.comment.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.comment.model.CmDto;

@Repository
public class CmDaoImpl implements CmDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.comment.";
	
	@Override
	public List<CmDto> cmSelectList(int boardNo){
		
		return sqlSession.selectList(namespace + "cmSelectList", boardNo);
	}

	@Override
	public int cmInsertOne(CmDto cmDto, int boardNo) {
		
		return sqlSession.insert(namespace + "cmInsertOne", cmDto);
	}

	@Override
	public int cmDeleteOne(int commentNo) {
		
		return sqlSession.delete(namespace + "cmDeleteOne", commentNo);
	}

	@Override
	public int cmUpdateOne(CmDto cmDto) {
		
		return sqlSession.update(namespace + "cmUpdateOne", cmDto);
	}
}
