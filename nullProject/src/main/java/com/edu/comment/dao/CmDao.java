package com.edu.comment.dao;

import java.util.List;

import com.edu.comment.model.CmDto;

public interface CmDao {

	public List<CmDto> cmSelectList(int boardNo);
	
	public int cmInsertOne(CmDto cmDto, int boardNo);
	
	public int cmDeleteOne(int commentNo);
	
	public int cmUpdateOne(CmDto cmDto);
}
