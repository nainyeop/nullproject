package com.edu.comment.model;

import java.util.Date;

public class CmDto {

	
	private int boardNo = 0;                   // 게시판 번호
	private int commentNo = 0;				   // 댓글 번호
	private Date commentCreDate = null;	   // 댓글 날짜
	private String commentWriter = "";		   // 댓글 작성자
	private String commentContent = "";		   // 댓글 내용
	private int commentState = 0;			   // 댓글 상태
	
	public CmDto() {
		super();
	}

	public CmDto(int boardNo, int commentNo, Date commentCreDate, String commentWriter, String commentContent,
			int commentState) {
		super();
		this.boardNo = boardNo;
		this.commentNo = commentNo;
		this.commentCreDate = commentCreDate;
		this.commentWriter = commentWriter;
		this.commentContent = commentContent;
		this.commentState = commentState;
	}

	public CmDto(int commentNo, Date commentCreDate, String commentWriter, String commentContent) {
		super();
		this.commentNo = commentNo;
		this.commentCreDate = commentCreDate;
		this.commentWriter = commentWriter;
		this.commentContent = commentContent;
	}

	public CmDto(Date commentCreDate, String commentWriter, String commentContent) {
		super();
		this.commentCreDate = commentCreDate;
		this.commentWriter = commentWriter;
		this.commentContent = commentContent;
	}

	public CmDto(int boardNo, Date commentCreDate, String commentContent) {
		super();
		this.boardNo = boardNo;
		this.commentCreDate = commentCreDate;
		this.commentContent = commentContent;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public Date getCommentCreDate() {
		return commentCreDate;
	}

	public void setCommentCreDate(Date commentCreDate) {
		this.commentCreDate = commentCreDate;
	}

	public String getCommentWriter() {
		return commentWriter;
	}

	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getCommentState() {
		return commentState;
	}

	public void setCommentState(int commentState) {
		this.commentState = commentState;
	}
	
	
	
	
}
