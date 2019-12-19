package com.edu.comment.service;

import java.util.List;

import com.edu.bbs.model.BbsDto;
import com.edu.comment.model.CmDto;

public interface CmService {

	public List<CmDto> cmSelectList(int boardNo);
	
	public void cmInsertOne(CmDto cmDto, int baordNo);
	
	public void cmDeleteOne(int commentNo);
	
	public int cmUpdateOne(CmDto cmDto) throws Exception;
	
}
