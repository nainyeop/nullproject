package com.edu.home;

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

import com.edu.member.model.MemberDto;
import com.edu.member.service.MemberService;
import com.edu.product.model.ProductDto;
import com.edu.product.service.ProductService;
import com.edu.util.Paging;

@Controller
public class HomeController {

	private static final Logger Logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MemberService memberService;
	@Autowired 
	private ProductService productService;
	
	//member 홈 화면
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String productList(@RequestParam(defaultValue = "1")int curPage
			, @RequestParam(defaultValue = "productName") String searchOption
			, @RequestParam(defaultValue = "") String keyword
			, Model model) {
		Logger.info("ProductList!");
		
		
		
		
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
		
		
		model.addAttribute("productList", productList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pagingMap", pagingMap);
		
		return "member/MemberHomeView";
		
	}

	
}
