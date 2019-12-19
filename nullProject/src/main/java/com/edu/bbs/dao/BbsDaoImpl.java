package com.edu.bbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.bbs.model.BbsDto;

@Repository
public class BbsDaoImpl implements BbsDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.bbs.";
	
	@Override
	public List<BbsDto> bbsSelectList(String searchOption, String keyword, int start, int end){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList(namespace + "bbsSelectList", map);
	}
	
	
	
	@Override
	public int bbsSelectTotalCount(String searchOption, String keyword, int boardState) {
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("boardState", boardState);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return (int)sqlSession.selectOne(namespace + "bbsSelectTotalCount", map);
	}
	
	@Override
	public BbsDto bbsSelectOne(int boardNo){
		
		return sqlSession.selectOne(namespace + "bbsSelectOne", boardNo);
	}
	
	@Override
	public int bbsInsertOne(BbsDto bbsDto) {
		
		return sqlSession.insert(namespace + "bbsInsertOne", bbsDto);
	}
	
	@Override
	public int bbsUpdateOne(BbsDto bbsDto) {
		
		return sqlSession.update(namespace + "bbsUpdateOne", bbsDto);
	}
	
	@Override
	public int bbsDeleteOne(int boardNo) {
		
		return sqlSession.delete(namespace + "bbsDeleteOne", boardNo);
	}
	
	
	
}
