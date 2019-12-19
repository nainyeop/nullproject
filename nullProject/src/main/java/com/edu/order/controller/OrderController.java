
package com.edu.order.controller;

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

import com.edu.cart.model.CartDto;
import com.edu.cart.service.CartService;
import com.edu.member.model.MemberDto;
import com.edu.member.service.MemberService;
import com.edu.order.model.OrderDto;
import com.edu.order.service.OrderService;
import com.edu.orderlist.model.OrderListDto;
import com.edu.util.Paging;


@Controller
public class OrderController {

	private static final Logger Logger = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired 
	CartService cartService;
	
	
	// (관리)주문내역 페이지
	@RequestMapping(value = "/order/orderList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String orderlistcustmor(@RequestParam(defaultValue = "1") int curPage,
			Model model) {
		Logger.info("Welcome OrderController orderList! :  curPage : {} keyword : {}", curPage);
		int totalCount = orderService.orderSelectTotalCount();
		int blockScale = 5;
		int pageScale = 10;
		// 페이징 관련 처리
		Paging orderPaging = new Paging(totalCount, curPage, blockScale, pageScale);
		int start = orderPaging.getPageBegin();
		int end = orderPaging.getPageEnd();

		List<OrderDto> orderList = orderService.orderSelectList(start, end);

		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("orderPaging", orderPaging);

		model.addAttribute("orderList", orderList);
		model.addAttribute("pagingMap", pagingMap);
		
		
		return "order/OrderListView";
	}


	// (관리)주문내역 상세 페이지
	@RequestMapping(value = "/order/orderDetali.do", method = RequestMethod.GET)
	public String orderDetail(int memberNo,  Model model) {
		Logger.info("Welcome orderController orderDetail! - " + "member_no: {}", memberNo);
		
		Map<String, Object> map = orderService.orderSelectOne(memberNo);
	
		OrderDto orderDto = (OrderDto) map.get("orderDto");
	
		model.addAttribute("orderDto", orderDto);
		
		
		return "order/OrderDetailView";
	}

	
	// (회원)주문 구매 (상세페이지에서 구매)
	// select
	@RequestMapping(value="/order/orderPayment.do", method=RequestMethod.POST)
	public String orderPayment(int memberNo, int cartTotalPrice, Model model) {
		
		Logger.info("orderBuyNow !");
		
		Map<String, Object> map = memberService.memberSelectOne(memberNo);
		
		List<CartDto> list = cartService.cartSelectList(memberNo);
		
		MemberDto memberDto = (MemberDto) map.get("memberDto");
		model.addAttribute("cartTotalPrice",cartTotalPrice);
		model.addAttribute("memberDto", memberDto);
		model.addAttribute("cartList" ,list);
		
		return "order/OrderPaymentView";
	}
	
	//(회원)주문 구매Ctr
	// insert
	@RequestMapping(value="/order/orderAdd.do", method=RequestMethod.POST)
	public String orderPaymentCtr(String memberName, int memberNo, String memberEmail, String memberPhone, String memberAddress, 
			String orderRequirement, int cartTotalPrice, 
			@RequestParam int[] cartProductNo, @RequestParam int[] cartProductCount, 
			int cartNo, HttpSession session, Model model) {
		
		Logger.info("orderPaymentCtr");
		
		OrderDto orderDto = new OrderDto();
		
		orderDto.setMemberNo(memberNo);
		orderDto.setOrderEmail(memberEmail);
		orderDto.setOrderPhone(memberPhone);
		orderDto.setOrderAddress(memberAddress);
		orderDto.setOrderRequirement(orderRequirement);
		orderDto.setCartTotalPrice(cartTotalPrice);
		orderDto.setOrderMemberName(memberName);
		
		orderService.orderInsertOne(orderDto);
		orderService.memberCashUpdate(memberNo, cartTotalPrice);
		
		orderService.cartToOrderList(memberNo);
		for (int i = 0; i < cartProductNo.length; i++) {
			int productNo = cartProductNo[i];
			int productCount = cartProductCount[i];
			orderService.productCountUpdate(productNo, productCount);
		}
//			List<OrderListDto> orderList = orderService.productCountSelectOne(cartNo);
		orderService.cartDelete(memberNo);
		
		
		return "order/OrderPaySuccessView";
	}
	
		
	
	//(회원)주문내역
	
	//(회원)





}
