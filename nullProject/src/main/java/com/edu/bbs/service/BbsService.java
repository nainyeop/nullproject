package com.edu.bbs.service;

import java.util.List;
import java.util.Map;

import com.edu.bbs.model.BbsDto;

public interface BbsService {

	public List<BbsDto> bbsSelectList(String searchOption,
			String keyword, int start, int end);
	
	public int bbsSelectTotalCount(String searchOption, 
			String keyword, int state);

	public Map<String, Object> bbsSelectOne(int boardNo);
	
	public void bbsInsertOne(BbsDto bbsDto) throws Exception;
	
	public int bbsUpdateOne(BbsDto bbsDto) throws Exception;
	
	public void bbsDeleteOne(int boardNo);
	
//	public void bbsSelectWriter(int boardWriter);
	
	
}
