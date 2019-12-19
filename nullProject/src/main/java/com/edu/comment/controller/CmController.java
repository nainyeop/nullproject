package com.edu.comment.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.comment.model.CmDto;
import com.edu.comment.service.CmService;
import com.edu.comment.service.CmServiceImpl;

@Controller
public class CmController {

	private static final Logger logger
		= LoggerFactory.getLogger(CmController.class);
	
	@Autowired
	private CmService cmService;

	
	//댓글 추가
	@RequestMapping(value="/cmWrite.do", method=RequestMethod.POST)
	public String cmWriteCtr(@ModelAttribute CmDto cmDto, Model model, int boardNo, int curPage, 
			String searchOption, String keyWord) {
		logger.info("cmWrite! cmDto:{}, boardNo:{}", cmDto, boardNo);
		
		cmService.cmInsertOne(cmDto, boardNo);
		
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("curPage", curPage);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("keyWord", keyWord);
		
		
		return "redirect:/bbsDetail.do";
	}
	

	//댓글 수정
	@RequestMapping(value="/cmUpdate.do", method=RequestMethod.POST)
	public String cmUpdate(HttpSession session, int boardNo, int curPage , CmDto cmDto, Model model) {
		
		logger.info("cmUpdate ! CmDto:{}", cmDto);
		
		int resultNum = 0;
		
		try {
			resultNum = cmService.cmUpdateOne(cmDto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(resultNum > 0) {
			CmDto sessionCmDto 
				= (CmDto)session.getAttribute("cm");
			
			if(sessionCmDto != null) {
				
				if(sessionCmDto.getCommentNo() == cmDto.getCommentNo()) {
					CmDto newCmDto = new CmDto();
					
					newCmDto.setCommentNo(cmDto.getCommentNo());
					newCmDto.setCommentContent(cmDto.getCommentContent());
					
					session.removeAttribute("cm");
					session.setAttribute("cm", newCmDto);
				}
			}
		}
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("curPage", curPage);
		
		return "redirect:/bbsDetail.do";
	}
	
	
	//댓글 삭제
	@RequestMapping(value="/cmDelete.do", 
			method= {RequestMethod.GET ,RequestMethod.POST})
	public String cmDelete(int commentNo, int boardNo, int curPage, Model model) {
		
		logger.info("cmDelete ! commentNo:{}", commentNo);
		
		cmService.cmDeleteOne(commentNo);
		
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("curPage", curPage);
		
		return "redirect:/bbsDetail.do";
	}






}