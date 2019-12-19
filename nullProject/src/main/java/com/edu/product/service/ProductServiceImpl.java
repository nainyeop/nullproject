package com.edu.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.img.model.FileDto;
import com.edu.product.dao.ProductDao;
import com.edu.product.model.ProductDto;
import com.edu.util.FileUtils;

@Service
public class ProductServiceImpl implements ProductService {

	private static final Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);

	@Autowired
	public ProductDao productDao;
	public FileDto fileDto;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public List<ProductDto> productSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub

		return productDao.productSelectList(searchOption, keyword, start, end);
	}

	@Override
	public void productInsertOne(ProductDto productDto, MultipartHttpServletRequest mulRequest) throws Exception {
		// TODO Auto-generated method stub

		productDao.productInsertOne(productDto);

		int parentSeq = productDto.getProductNo();
		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(parentSeq, mulRequest);

		if (list != null) {
			for (Map<String, Object> map : list) {
				productDao.insertFile(map);
			}
		}
	}

	@Override
	public int productTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub

		return productDao.productTotalCount(searchOption, keyword);
	}

	@Override
	public ProductDto productSelectOne(int productNo) {
		// TODO Auto-generated method stub

		ProductDto productDto = productDao.productSelectOne(productNo);

		return productDto;
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public int productUpdateOne(ProductDto productDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		// TODO Auto-generated method stub

		int resultNum = 0;

		try {
			resultNum = productDao.productUpdateOne(productDto);

			int parentSeq = productDto.getProductNo();

			FileDto fileDto = productDao.fileSelectStoredFileName(parentSeq);

			Map<String, Object> fileDeleteMap = new HashMap<String, Object>();
			if (fileDto != null) {
				fileDeleteMap.put("STORED_FILE_NAME", fileDto.getStoredFileName());	
			}
							
			List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(parentSeq, mulRequest);			
			
			if (fileIdx == -1) {
				// 없는 상태에서 신규 이미지
				if (list.isEmpty() == false) {
					for (Map<String, Object> map : list) {
						productDao.insertFile(map);
					}
				}else { // 기존파일 삭제
					fileUtils.parseUpdateFileInfo(fileDeleteMap);
					productDao.fileDelete(parentSeq);
				}
			} else {	// 기존 파일이 있을때
				if (list.isEmpty() == false) { // 수정한 경우
					// 수정
					for (Map<String, Object> map : list) {
						map.put("fileIdx", fileIdx);
						fileUtils.parseUpdateFileInfo(fileDeleteMap);
						productDao.fileUpdateOne(map);
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}

		return resultNum;
	}

	@Override
	public void productDeleteCtr(int productNo) {
		// TODO Auto-generated method stub
		
		productDao.productDeleteCtr(productNo); 
	}

}
