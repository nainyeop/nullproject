package com.edu.img.model;

import java.util.Date;

public class FileDto {
	
	private int imgIdx = 0;
	private String originalFileName = "";
	private String storedFileName = "";
	private int fileSize = 0;
	private Date imgCreDate = null;
	private int imgProductNo = 0;
	
	
	
	
	
	
	
	public FileDto() {
		super();
	}
	
	
	public FileDto(int imgIdx, String originalFileName, String storedFileName, int fileSize, Date imgCreDate,
			int imgProductNo) {
		super();
		this.imgIdx = imgIdx;
		this.originalFileName = originalFileName;
		this.storedFileName = storedFileName;
		this.fileSize = fileSize;
		this.imgCreDate = imgCreDate;
		this.imgProductNo = imgProductNo;
	}


	public int getImgIdx() {
		return imgIdx;
	}
	public void setImgIdx(int imgIdx) {
		this.imgIdx = imgIdx;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getStoredFileName() {
		return storedFileName;
	}
	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	public Date getImgCreDate() {
		return imgCreDate;
	}
	public void setImgCreDate(Date imgCreDate) {
		this.imgCreDate = imgCreDate;
	}
	public int getImgProductNo() {
		return imgProductNo;
	}
	public void setImgProductNo(int imgProductNo) {
		this.imgProductNo = imgProductNo;
	}
	
	
	
	
	
	
	
}
