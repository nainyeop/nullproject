package com.edu.member.dao;

import java.util.List;
import java.util.Map;


import com.edu.member.model.MemberDto;

public interface MemberDao {

	
	//회원 리스트 조회
	public List<MemberDto> memberSelectList(String searchOption, String keyword, int start, int end);
	//마이페이지 충전 비밀번호 매칭
	public MemberDto memberMatchOne(String memberPassword);
	//회원 로그인
	public MemberDto memberExistOne(String memberEmail, String memberPassword);
	//회원 이메일 찾기
	public MemberDto memberExistTwo(String memberName, String memberPhone);
	//회원 비밀번호 찾기
	public MemberDto memberExistTree(String memberEmail, String memberPhone);
	//회원 가입
	public int memberInsertOne(MemberDto memberDto);
	//회원 조회
	public MemberDto memberSelectOne(int memberNo);
	//회원 가입 유효성검사
	public MemberDto memberSelectEmail(MemberDto memberDto);
	//회원정보 수정
	public int memberUpdateOne(MemberDto memberDto);
	//회원 캐시 충전
	public int memberCashUpdate(MemberDto memberDto);
	//회원 카운팅
	public int memberSelectTotalCount(String searchOption, String keyword);

	
	

}
