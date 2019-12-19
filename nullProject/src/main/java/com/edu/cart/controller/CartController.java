package com.edu.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.edu.cart.model.CartDto;
import com.edu.cart.service.CartService;
import com.edu.member.model.MemberDto;
import com.edu.product.model.ProductDto;

@Controller
public class CartController {

	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Autowired 
	CartService cartService;
	
	
	// 장바구니 추가
	@RequestMapping(value="cart/cartadd.do")
	public String cartAdd(int productNo, int productCount, HttpSession session, Model model) {
		
		logger.info("CartAdd! - productNo : {}", productNo);
		
		
		MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");
		int memberNo = memberDto.getMemberNo();
		int memberCash = memberDto.getMemberCash();
//		cartDto.setCartMemberNo(memberNo);
		// 장바구니 상품 유무 확인

		CartDto cartDto = cartService.cartSelcetOne(productNo, memberNo);
		
		if (cartDto == null) {
			
			CartDto cartSelectOneDto = new CartDto();
			
			cartSelectOneDto.setCartMemberNo(memberNo);
			cartSelectOneDto.setCartProductNo(productNo);
			cartSelectOneDto.setCartProductCount(productCount);
		
			cartService.cartAdd(cartSelectOneDto);
		} else {
			
			CartDto cartSelectOneDto = new CartDto();
			
			cartSelectOneDto.setCartMemberNo(memberNo);
			cartSelectOneDto.setCartProductNo(productNo);
			cartSelectOneDto.setCartProductCount(productCount);
			
			cartService.cartUpdate(cartSelectOneDto);
		}

		return "redirect:/cart/cartlist.do";
	}
	
	
	@RequestMapping("cart/cartlist.do")
	public String cartSelectList(HttpSession session, Model model) {
		
		logger.info("cartlist !");
		
		MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");
		
		
		int memberNo = memberDto.getMemberNo(); 
		
//		System.out.println(memberNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDto> list = cartService.cartSelectList(memberNo);
		int cartTotalPrice = cartService.cartTotalprice(memberNo);
		
//		System.out.println(cartTotalPrice);

		map.put("list", list);
		map.put("count", list.size());
		map.put("cartTotalPrice", cartTotalPrice);
		
		model.addAttribute("map", map);

		return "cart/CartListView";
	}
	
	@RequestMapping("cart/cartdetele.do")
	public String cartDelete(@RequestParam int cartNo) {
		cartService.cartDelete(cartNo);
		return "redirect:/cart/cartlist.do";
		
	}
	
	@RequestMapping("cart/cartupdate.do")
	public String cartUpdate(int cartProductCount,
							 int cartProductNo,
							 HttpSession session) {
		
		MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");
		
		int memberNo = memberDto.getMemberNo(); 
		CartDto cartDto = new CartDto(memberNo, cartProductNo, cartProductCount);
		
		cartService.cartUpdate(cartDto);
		
		return "redirect:/cart/cartlist.do";
	}


	@RequestMapping("cart/asdasd.do")
	public String asdasd(int[] pNo,	HttpSession session) {
		System.out.println(pNo[0]);
		System.out.println(pNo[1]);
		System.out.println(pNo[2]);
		System.out.println(pNo[3]);
		System.out.println(pNo[4]);
		return "";
	}

	
	
}
