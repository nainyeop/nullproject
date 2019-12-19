package com.edu.member.service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.member.controller.MemberController;
import com.edu.member.dao.MemberDao;
import com.edu.member.model.MemberDto;


@Service
public class MemberServiceImpl implements MemberService {

	private static final Logger Log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	public MemberDao memberDao;

	@Override
	public List<MemberDto> memberSelectList(String searchOption, String keyword, int start, int end) {
		return memberDao.memberSelectList(searchOption, keyword, start, end);
	}


	@Override
	public MemberDto memberMatchOne(String memberPassword) {
		// TODO Auto-generated method stub
		return memberDao.memberMatchOne(memberPassword);
	}


	@Override
	public MemberDto memberExistOne(String memberEmail, String memberPassword) {
		// TODO Auto-generated method stub
		return memberDao.memberExistOne(memberEmail, memberPassword);
	}
	
	@Override
	public MemberDto memberExistTwo(String memberName, String memberPhone) {
		// TODO Auto-generated method stub
		return memberDao.memberExistTwo(memberName, memberPhone);
	}
	public MemberDto memberExistTree(String memberEmail, String memberPhone) {
		// TODO Auto-generated method stub
		return memberDao.memberExistTree(memberEmail, memberPhone);
	}
	

	@Override
	public void memberInsertOne(MemberDto memberDto, MultipartHttpServletRequest multipartHttpServletRequest)
			throws Exception {

//		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
//		MultipartFile multipartFile = null;
//		
//		
//		while(iterator.hasNext()) {
//			
//			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
//			if(multipartFile.isEmpty() == false) {
//				Log.debug("=======================file start========================");
//				Log.debug("name : {}", multipartFile.getName());
//				Log.debug("fileNmae : {}", multipartFile.getOriginalFilename());
//				Log.debug("size : {}", multipartFile.getSize());
//				Log.debug("=======================file end=========================\n");
//				
//			}
//		}
		memberDao.memberInsertOne(memberDto);

		int parentSeq = memberDto.getMemberNo();


	}

	@Override
	public Map<String, Object> memberSelectOne(int memberNo) {

		Map<String, Object> resultMap = new HashMap<String, Object>();

		MemberDto memberDto = memberDao.memberSelectOne(memberNo);
		resultMap.put("memberDto", memberDto);

		return resultMap;
	}
	
	@Override
	public MemberDto memberSelectEmail(MemberDto memberDto) {

		return memberDao.memberSelectEmail(memberDto);
	}
	
	


	@Transactional(rollbackFor = Exception.class)
	@Override
	public int memberUpdateOne(MemberDto memberDto, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		// TODO Auto-generated method stub

		int resultNum = 0;

		try {
			resultNum = memberDao.memberUpdateOne(memberDto);

			int parentSeq = memberDto.getMemberNo();

		} catch (Exception e) {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}

		return resultNum;
	}
	

	@Override
	public int memberCashUpdate(MemberDto memberDto, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		// TODO Auto-generated method stub

		int resultNum = 0;

		try {
			resultNum = memberDao.memberCashUpdate(memberDto);

			int parentSeq = memberDto.getMemberNo();

		} catch (Exception e) {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}

		return resultNum;
	}
	
	@Override
	public int memberSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return memberDao.memberSelectTotalCount(searchOption, keyword);
	}











}
