package com.edu.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.img.service.FileService;
import com.edu.product.model.ProductDto;
import com.edu.product.service.ProductService;
import com.edu.util.Paging;

@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired ProductService productService;
	@Autowired FileService fileService;
	
	
	//상품리스트
	@RequestMapping(value="/product/productlist.do", 
			method= {RequestMethod.GET, RequestMethod.POST})
	public String productList(@RequestParam(defaultValue = "1")int curPage
			, @RequestParam(defaultValue = "productName") String searchOption
			, @RequestParam(defaultValue = "") String keyword
			, Model model) {
		logger.info("ProductList!");
		
		
		
		
		int totalCount = productService.productTotalCount(searchOption, keyword);
		
		int pageScale = 5;
		int blockScale = 8;
		
		Paging productPaging = new Paging(totalCount, curPage, pageScale, blockScale);
		
		int start = productPaging.getPageBegin();
		int end = productPaging.getPageEnd();
		
		List<ProductDto> productList = 
				productService.productSelectList(searchOption, keyword, start, end);
		
		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);
		
		
		System.out.println("상품 갯수 : " + totalCount);
		
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("paging", productPaging);
		
		System.out.println();
		
		model.addAttribute("productList", productList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pagingMap", pagingMap);
		
		return "product/ProductListView";
		
	}

	
	//상품추가
	@RequestMapping(value="/product/productadd.do", method=RequestMethod.GET)
	public String productAdd(HttpSession session, Model model) {
		logger.info("ProductAdd!");
		
		return "product/ProductAddForm";
	}
	
	//상품추가Ctr
		@RequestMapping(value="/product/productaddctr.do", method=RequestMethod.POST)
		public String productAddCtr(ProductDto productDto, 
				MultipartHttpServletRequest multipartHttpServletRequest, 
				Model model) {
			
			logger.info("productAddCtr!");
			
			try {
				productService.productInsertOne(productDto, multipartHttpServletRequest);
			} catch(Exception e) {
				System.out.println("productAddCtr Fail!!");
				e.printStackTrace();
			}
			return "redirect:/product/productlist.do";
			
		}
	
		
		//상품 상세 페이지
		@RequestMapping(value = "/product/productdetail.do", method = RequestMethod.GET)
		public String productDetail(int productNo, int curPage, Model model) {
			logger.info("ProductDetail! - " + "no: {}", productNo);
			
			ProductDto productDto = productService.productSelectOne(productNo);
			
			List<ProductDto> fileList = new ArrayList<ProductDto>();
			fileList.add(productDto);
				
			model.addAttribute("productDto", productDto);
			model.addAttribute("fileList", fileList);
			model.addAttribute("curPage", curPage);
		
			return "product/ProductDetailView";
		}	
		
		//상품추가
		@RequestMapping(value="/product/productupdate.do", method=RequestMethod.GET)
		public String productUpdate(int productNo, int curPage, Model model) {
			logger.info("ProductUpdate! productNo: {}, curPage: {}"
					, productNo, curPage);
			
			ProductDto productDto = productService.productSelectOne(productNo);
//			ProductDto fileDto = fileService.fileSelectOne(productNo);
			
			
			model.addAttribute("productDto", productDto);
//			model.addAttribute("fileDto", fileDto);
			model.addAttribute("curPage", curPage);
			
			return "product/ProductUpdateForm";
		}
	
		//상품추가Ctr
		@RequestMapping(value="/product/productupdatectr.do", method=RequestMethod.POST)
		public String productUpdateCtr(HttpSession httpSession, ProductDto productDto,
				@RequestParam(value="fileIdx", defaultValue = "-1") int fileIdx,
				MultipartHttpServletRequest multipartHttpServletRequest, 
				Model model) {
			
			logger.info("Welcome ProductController memberUpdateCtr! {} : : {}"
					, productDto, fileIdx);
			
			try {
				productService.productUpdateOne(productDto, multipartHttpServletRequest, fileIdx);
			} catch(Exception e) {
				System.out.println("productUpdateCtr Fail!!");
				e.printStackTrace();
			}
			
			
			
			return "product/ProductSuccessPage";
		}
	
		
		//상품추가Ctr
		@RequestMapping(value="/product/productDeleteCtr.do", method=RequestMethod.POST)
		public String productDeleteCtr(HttpSession httpSession, int productNo, Model model) {
			
			logger.info("Welcome ProductController productDeleteCtr! productNo = {}" , productNo);
			
			productService.productDeleteCtr(productNo);
			
			
			
			return "redirect:/product/productlist.do";
		}
	
	
	
	
	
}
