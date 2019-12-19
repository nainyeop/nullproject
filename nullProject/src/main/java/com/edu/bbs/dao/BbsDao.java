package com.edu.bbs.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.edu.bbs.model.*;


public interface BbsDao {

	public List<BbsDto> bbsSelectList(String searchOption, String keyword, int start, int end);
	
	public int bbsSelectTotalCount(String searchOption, String keyword, int boardState);

	public BbsDto bbsSelectOne(int boardNo);
	
	public int bbsInsertOne(BbsDto bbsDto);

	public int bbsUpdateOne(BbsDto bbsDto);
	
	public int bbsDeleteOne(int boardNo);
	
}
