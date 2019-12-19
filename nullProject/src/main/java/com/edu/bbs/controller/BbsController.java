package com.edu.bbs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.bbs.model.BbsDto;
import com.edu.bbs.service.BbsService;
import com.edu.comment.model.CmDto;
import com.edu.comment.service.CmService;
import com.edu.member.model.MemberDto;
import com.edu.util.Paging;

@Controller
public class BbsController {

	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Autowired
	private BbsService bbsService;
	
	@Autowired
	private CmService cmService;
	
	//게시판 리스트
	@RequestMapping(value="/bbsList.do", 
			method= {RequestMethod.GET, RequestMethod.POST})
	public String bbsList(@RequestParam(defaultValue="1") int curPage
			, @RequestParam(defaultValue="all") String searchOption
			, @RequestParam(defaultValue="") String keyword
			, @RequestParam(defaultValue="1") int boardState
			, Model model) {
		
		logger.info("bbsList: {}, {}", curPage, keyword);
		
		// 전체 게시물 갯수
		int totalCount = bbsService.bbsSelectTotalCount(searchOption, keyword, boardState);
		
		// 페이지 나누기 관련 처리
		int pageScale = 5;
		int blockScale = 10;
		Paging bbsPaging = new Paging(totalCount, curPage, pageScale, blockScale);
		
		int start = bbsPaging.getPageBegin();
		int end = bbsPaging.getPageEnd();
	
		List<BbsDto> bbsList = bbsService.bbsSelectList(searchOption, keyword, start, end);
		
		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);
		
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("paging", bbsPaging);
		
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pagingMap", pagingMap);
		
		return "bbs/bbsListView";
	}
	
	//게시물 열람
	@RequestMapping(value = "/bbsDetail.do", method=RequestMethod.GET)
	public String bbsDetail(int boardNo, int curPage
			, @RequestParam(defaultValue="all") String searchOption
			, @RequestParam(defaultValue="") String keyword
			, Model model){
		
		logger.info("bbsDetail!  no:{}", boardNo);
		
		Map<String, Object> map = bbsService.bbsSelectOne(boardNo);
		
		BbsDto bbsDto = (BbsDto)map.get("bbsDto");
		
		List<CmDto> cmList = cmService.cmSelectList(boardNo);
		
		model.addAttribute("bbsDto", bbsDto);
		model.addAttribute("curPage", curPage);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("keyword", keyword);
		
		model.addAttribute("cmList", cmList);
		
		return "bbs/bbsDetailView";
	}
	
	//게시물 추가
	@RequestMapping(value="/bbsWrite.do", method=RequestMethod.GET)
	public String bbsWrite(Model model) {
		
		logger.info("bbsWrite ! ");
		
		return "bbs/bbsWriteView";
	}

	//게시물 추가ctr
	@RequestMapping(value="/bbsWriteCtr.do", method=RequestMethod.POST)
	public String bbsWriteCtr(@ModelAttribute BbsDto bbsDto, Model model) {
		
		logger.info("bbsWriteCtr ! bbsDto:{}", bbsDto);
		
		try {
			bbsService.bbsInsertOne(bbsDto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/bbsList.do";
	}
	
	//게시물 수정
	@RequestMapping(value="/bbsUpdate.do", method=RequestMethod.GET)
	public String bbsUpdate(int boardNo, Model model) {
		
		logger.info("bbsUpdate ! boardNo : {}", boardNo);
		
		Map<String, Object> map = bbsService.bbsSelectOne(boardNo);
		
		BbsDto bbsDto = (BbsDto) map.get("bbsDto");
		
		model.addAttribute("bbsDto", bbsDto);
		
		return "bbs/bbsUpdateView";
	}
	
	//게시물 수정ctr
	@RequestMapping(value="/bbsUpdateCtr.do", method=RequestMethod.POST)
	public String bbsUpdateCtr(HttpSession session, BbsDto bbsDto
			, Model model){
		
		logger.info("bbsUpdateCtr ! bbsDto: {}, session: {}", bbsDto, session);
		
		int resultNum = 0;
		
		try {
			resultNum = bbsService.bbsUpdateOne(bbsDto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(resultNum > 0) {
			BbsDto sessionBbsDto = 
					(BbsDto)session.getAttribute("bbs");
		
			if(sessionBbsDto != null) {
				
				if(sessionBbsDto.getBoardNo() == bbsDto.getBoardNo()) {
					BbsDto newBbsDto = new BbsDto();
					
					newBbsDto.setBoardNo(bbsDto.getBoardNo());
					newBbsDto.setBoardTitle(bbsDto.getBoardTitle());
					newBbsDto.setBoardContent(bbsDto.getBoardContent());
					
					session.removeAttribute("bbs");
					session.setAttribute("bbs", newBbsDto);
				}
			}
		}
		
		return "bbs/bbsInsertSuccess";
	}
	
	//게시물 삭제ctr
	@RequestMapping(value="bbsDeleteCtr.do",
				method = {RequestMethod.GET, RequestMethod.POST})
	public String bbsDeleteCtr(int boardNo, Model model) {
		
		logger.info("bbsDeleteCtr ! boardNo : {}", boardNo);
		
		bbsService.bbsDeleteOne(boardNo);
		
		return "redirect:/bbsList.do";
	}
	
	
	
	
}
