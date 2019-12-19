package com.edu.bbs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.edu.bbs.dao.BbsDao;
import com.edu.bbs.model.BbsDto;

@Service
public class BbsServiceImpl implements BbsService {
	
	private static final Logger logger = LoggerFactory.getLogger(BbsServiceImpl.class);
	
	@Autowired
	public BbsDao bbsDao;
	
	@Override
	public List<BbsDto> bbsSelectList(String searchOption, String keyword, int start, int end){
		
		return bbsDao.bbsSelectList(searchOption, keyword, start, end);
	}
	
	@Override
	public int bbsSelectTotalCount(String searchOption, String keyword, int boardState) {
		
		return bbsDao.bbsSelectTotalCount(searchOption, keyword, boardState);
	}

	@Override
	public Map<String, Object> bbsSelectOne(int boardNo){
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		BbsDto bbsDto = bbsDao.bbsSelectOne(boardNo);
		resultMap.put("bbsDto", bbsDto);
		
		return resultMap;
	}
	
	@Override
	public void bbsInsertOne(BbsDto bbsDto) throws Exception {
		
		bbsDao.bbsInsertOne(bbsDto);
			
	}
		
	@Transactional(rollbackFor=Exception.class)
	@Override	
	public int bbsUpdateOne(BbsDto bbsDto) throws Exception {
		
		int resultNum = 0;
		
		try {
			resultNum = bbsDao.bbsUpdateOne(bbsDto);
		}catch(Exception e){
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		
		return resultNum;	
	}
	
	@Override
	public void bbsDeleteOne(int boardNo) {
		
		bbsDao.bbsDeleteOne(boardNo);
	}
	
	
	
}
