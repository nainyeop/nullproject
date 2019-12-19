	package com.edu.bbs.model;
	
	import java.util.Date;
	
	public class BbsDto {	
		
	private int boardNo = 0; 				// 게시글 번호
	private String boardTitle = ""; 		// 게시글 제목
	private String boardContent = ""; 		// 게시글 내용
	private Date boardCreDate = null; 		// 게시글 작성일
	private Date boardModDate = null; 		// 게시글 수정일
	private String boardCategory = ""; 		// 분류(b) 추후 게시판 추가 대비
	private int boardState = 0; 			// 게시글 (1)활성상태, (0)비활성상태 
	private String memberName = ""; 		// 회원이름 = 게시판작성자
	private int memberNo = 0;				// 회원 번호
	
	
	public BbsDto() {
		super();
	}
	

	//게시판 리스트
		public BbsDto(int boardNo, String boardTitle, String boardContent, Date boardModDate, String memberName) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardModDate = boardModDate;
			this.memberName = memberName;
		}
		
		//게시판 상세조회, 수정
		public BbsDto(int boardNo, String boardTitle, int memberNo, String boardContent,	Date boardModDate, String memberName) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.memberNo = memberNo;
			this.boardContent = boardContent;
			this.boardModDate = boardModDate;
			this.memberName = memberName;
		}
		
		//게시판 추가
		public BbsDto(int boardNo, String boardTitle, String boardContent, Date boardCreDate,
				Date boardModDate, String boardCategory, int boardState, int memberNo) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardCreDate = boardCreDate;
			this.boardModDate = boardModDate;
			this.boardCategory = boardCategory;
			this.boardState = boardState;
			this.memberNo = memberNo;
		}
	
		
		public BbsDto(int boardNo, String boardTitle, String boardContent, Date boardModDate, String memberName,
				int memberNo) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardModDate = boardModDate;
			this.memberName = memberName;
			this.memberNo = memberNo;
		}


		public BbsDto(int boardNo, String boardTitle, String boardContent) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
		}


		public BbsDto(int boardNo, String boardTitle, String boardContent, Date boardCreDate,
				Date boardModDate, String boardCategory, int boardState, String memberName, int memberNo) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardCreDate = boardCreDate;
			this.boardModDate = boardModDate;
			this.boardCategory = boardCategory;
			this.boardState = boardState;
			this.memberName = memberName;
			this.memberNo = memberNo;
		}
		

		public BbsDto(int boardNo, String boardTitle, String boardContent, String memberName, int memberNo) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.memberName = memberName;
			this.memberNo = memberNo;
		}

		
		public BbsDto(int boardNo, String boardTitle, String boardContent, Date boardModDate) {
			super();
			this.boardNo = boardNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardModDate = boardModDate;
		}


	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardCreDate() {
		return boardCreDate;
	}

	public void setBoardCreDate(Date boardCreDate) {
		this.boardCreDate = boardCreDate;
	}

	public Date getBoardModDate() {
		return boardModDate;
	}

	public void setBoardModDate(Date boardModDate) {
		this.boardModDate = boardModDate;
	}

	public String getBoardCategory() {
		return boardCategory;
	}

	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}

	public int getBoardState() {
		return boardState;
	}

	public void setBoardState(int boardState) {
		this.boardState = boardState;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	@Override
	public String toString() {
		return "BbsDto [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardCreDate=" + boardCreDate + ", boardModDate=" + boardModDate
				+ ", boardCategory=" + boardCategory + ", boardState=" + boardState + ", memberName=" + memberName
				+ ", memberNo=" + memberNo + "]";
	}
     
     
     

     
     
     
     
     
}