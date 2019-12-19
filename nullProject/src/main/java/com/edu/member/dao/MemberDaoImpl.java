package com.edu.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.member.model.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.member.";
	
	@Override
	public List<MemberDto> memberSelectList(String searchOption, String keyword, int start, int end){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList(namespace + "memberSelectList", map);
	}
	@Override
	public MemberDto memberMatchOne(String memberPassword) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("memberPwd", memberPassword);
		
		
		return sqlSession.selectOne(namespace + "memberMatchOne", paramMap);
	}

	@Override
	public MemberDto memberExistOne(String memberEmail, String memberPassword) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("memberEmail", memberEmail);
		paramMap.put("memberPwd", memberPassword);
		
		
		return sqlSession.selectOne(namespace + "memberExistOne", paramMap);
	}
	public MemberDto memberExistTwo(String memberName, String memberPhone) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("memberName", memberName);
		paramMap.put("memberPhone", memberPhone);
		
		
		return sqlSession.selectOne(namespace + "memberExistTwo", paramMap);
	}
	public MemberDto memberExistTree(String memberEmail, String memberPhone) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("memberEmail", memberEmail);
		paramMap.put("memberPhone", memberPhone);
		
		
		return sqlSession.selectOne(namespace + "memberExistTree", paramMap);
	}
	
	
	@Override
	public int memberInsertOne(MemberDto memberDto) {
		
		return sqlSession.insert(namespace + "memberInsertOne", memberDto);
	}
	
	@Override
	public MemberDto memberSelectOne(int memberNo) {
		return sqlSession.selectOne(namespace + "memberSelectOne", memberNo);
		
	}
	@Override
	public MemberDto memberSelectEmail(MemberDto memberDto) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("memberDto", memberDto);

		
		
		return sqlSession.selectOne(namespace + "memberSelectEmail", paramMap);
	}

	@Override
	public int memberUpdateOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberUpdateOne", memberDto);
	}
	
	@Override
	public int memberCashUpdate(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberCashUpdate", memberDto);
	}
	

	@Override
	public int memberSelectTotalCount(String searchOption, String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		
		return (int)sqlSession.selectOne(namespace + "memberSelectTotalCount", map);
		
	}





	


	

}
