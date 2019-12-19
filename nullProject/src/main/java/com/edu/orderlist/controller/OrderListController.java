package com.edu.orderlist.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.order.model.OrderDto;
import com.edu.order.service.OrderService;
import com.edu.orderlist.model.OrderListDto;
import com.edu.orderlist.service.OrderListService;
import com.edu.product.controller.ProductController;
import com.edu.product.service.ProductService;

@Controller
public class OrderListController {

private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired ProductService productService;
	@Autowired OrderListService orderListService;
	@Autowired OrderService orderService;
	
	
	@RequestMapping(value="/order/orderlist.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String orderBaskectList(HttpSession httpSession, OrderDto orderDto, Model model) {
		logger.info("OrderBaskectList! - MakingOrderList...");
		
		
		
	
		return "redirect:/order/OrderPageMoveView";
		
	}
	
	
	
}
