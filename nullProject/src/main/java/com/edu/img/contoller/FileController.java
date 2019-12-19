package com.edu.img.contoller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.edu.img.service.FileServiceImpl;
import com.edu.product.controller.ProductController;
import com.edu.product.service.ProductService;

@Controller
public class FileController {
	
private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired FileServiceImpl fileService;
	
	
	
	
	
}





