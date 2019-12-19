package com.edu.comment.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.edu.bbs.model.BbsDto;
import com.edu.comment.dao.CmDao;
import com.edu.comment.model.CmDto;

@Service
public class CmServiceImpl implements CmService{
	
	private static final Logger logger
		= LoggerFactory.getLogger(CmServiceImpl.class);

	@Autowired
	public CmDao cmDao;
	
	@Override
	public List<CmDto> cmSelectList(int boardNo){
		
		return cmDao.cmSelectList(boardNo);
	}
	
	@Override
	public void cmInsertOne(CmDto cmDto, int boardNo) {
		
		cmDao.cmInsertOne(cmDto, boardNo);
	}
	
	@Override
	public void cmDeleteOne(int commentNo) {
		
		cmDao.cmDeleteOne(commentNo);
	}
	
	@Transactional(rollbackFor=Exception.class)
	@Override
	public int cmUpdateOne(CmDto cmDto) throws Exception{

		int resultNum = 0;
		
		try {
			resultNum = cmDao.cmUpdateOne(cmDto);
		}catch(Exception e){
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		
		return resultNum;	
		
	}
	
	
	
	
	
}
