package com.edu.member.model;

import java.util.Date;

public class MemberDto {

	private int memberNo = 0;
	private String memberName = "";
	private String memberEmail = "";
	private String memberPhone = "";
	private String memberAddress = "";
	private int memberCash = 0;
	private String memberPassword = "";
	private int memberAdmin = 0;
	private String memberCategory = "";
	private int memberState = 0;
	private Date memberCreateDate = null;
	private Date memberModifiedDate = null;
	
	
	
//이름, 전화번호, 이메일
//
//이름, 이메일, 전화번호, 주소
//
//비밀번호, 캐시
//
//이름 이메일 전화번소 주소 캐시
//
//이름 이메일 비밀번호 전화번호 주소

	
	public MemberDto() {
		super();
	}

	public MemberDto(int memberNo, String memberName, String memberEmail, int memberAdmin, int memberCash) {
	super();
	this.memberNo = memberNo;
	this.memberName = memberName;
	this.memberEmail = memberEmail;
	this.memberAdmin = memberAdmin;
	this.memberCash = memberCash;
}

	



	
	public MemberDto(int memberNo, String memberName, String memberEmail, String memberPhone, String memberAddress,
			int memberCash, String memberPassword, int memberAdmin, String memberCategory, int memberState,
			Date memberCreateDate, Date memberModifiedDate) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.memberAddress = memberAddress;
		this.memberCash = memberCash;
		this.memberPassword = memberPassword;
		this.memberAdmin = memberAdmin;
		this.memberCategory = memberCategory;
		this.memberState = memberState;
		this.memberCreateDate = memberCreateDate;
		this.memberModifiedDate = memberModifiedDate;
	}

	public MemberDto(String memberName, String memberEmail, String memberPhone,String memberPassword) {
		super();
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.memberPassword = memberPassword;
	}
	
	public MemberDto(String memberName, String memberEmail, String memberPassword) {
		super();
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public int getMemberCash() {
		return memberCash;
	}

	public void setMemberCash(int memberCash) {
		this.memberCash = memberCash;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public int getMemberAdmin() {
		return memberAdmin;
	}

	public void setMemberAdmin(int memberAdmin) {
		this.memberAdmin = memberAdmin;
	}

	public String getMemberCategory() {
		return memberCategory;
	}

	public void setMemberCategory(String memberCategory) {
		this.memberCategory = memberCategory;
	}

	public int getMemberState() {
		return memberState;
	}

	public void setMemberState(int memberState) {
		this.memberState = memberState;
	}

	public Date getMemberCreateDate() {
		return memberCreateDate;
	}

	public void setMemberCreateDate(Date memberCreateDate) {
		this.memberCreateDate = memberCreateDate;
	}

	public Date getMemberModifiedDate() {
		return memberModifiedDate;
	}

	public void setMemberModifiedDate(Date memberModifiedDate) {
		this.memberModifiedDate = memberModifiedDate;
	}

	@Override
	public String toString() {
		return "MemberDto [memberNo=" + memberNo + ", memberName=" + memberName + ", memberEmail=" + memberEmail
				+ ", memberPhone=" + memberPhone + ", memberAddress=" + memberAddress + ", memberCash=" + memberCash
				+ ", memberPassword=" + memberPassword + ", memberAdmin=" + memberAdmin + ", memberCategory="
				+ memberCategory + ", memberState=" + memberState + ", memberCreateDate=" + memberCreateDate
				+ ", memberModifiedDate=" + memberModifiedDate + "]";
	}

}