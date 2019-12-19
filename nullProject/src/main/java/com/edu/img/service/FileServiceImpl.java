package com.edu.img.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.img.dao.FileDao;
import com.edu.img.model.FileDto;
import com.edu.product.service.ProductServiceImpl;
import com.edu.util.FileUtils;

@Service
public class FileServiceImpl implements FileService{

	private static final Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);

	@Autowired
	public FileDao fileDao;
	public FileDto fileDto;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public FileDto fileSelectOne(int productNo) {
		// TODO Auto-generated method stub
		FileDto fileDto = fileDao.fileSelectOne(productNo);
		return fileDto;
	}
	
	
	
	
}
