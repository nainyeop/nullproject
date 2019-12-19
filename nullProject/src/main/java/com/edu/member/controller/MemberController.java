package com.edu.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

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
import com.edu.util.Paging;

@Controller
public class MemberController {

	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;
	


	// 관리자 회원 리스트 화면으로
	@RequestMapping(value = "/member/list.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "MEMBER_NAME") String searchOption, 
			@RequestParam(defaultValue = "") String keyword,
			Model model) {
		Logger.info("Welcome MemberController memberList! :  curPage : {} keyword : {}", curPage, keyword);

		// 전체 게시물 갯수
		int totalCount = memberService.memberSelectTotalCount(searchOption, keyword);
		int blockScale = 10;
		int pageScale = 10;
		// 페이징 관련 처리
		Paging memberPaging = new Paging(totalCount, curPage, blockScale, pageScale);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();

		List<MemberDto> memberList = memberService.memberSelectList(searchOption, keyword, start, end);

		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);

		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("paging", memberPaging);

		System.out.println(totalCount);
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("searchMap", searchMap);
		model.addAttribute("pagingMap", pagingMap);

		return "admin/userAllListView";
	}

	// 회원 로그인페이지 이동
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(String memberEmail, String memberPassword, HttpSession session, Model model) {
		Logger.info("Welcome MemberController login! ");

		return "login/LoginForm";
	}
	// 회원 로그인페이지
	@RequestMapping(value = "/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String memberEmail, String memberPassword, HttpSession session, Model model) {
		Logger.info("Welcome MemberController loginCtr!{},{} ", memberEmail, memberPassword);
		MemberDto memberDto = memberService.memberExistOne(memberEmail, memberPassword);

		String viewUrl = "";

		if (memberDto != null) {

			session.setAttribute("memberDto", memberDto);

			viewUrl = "redirect:/home.do";
		} else {

			viewUrl = "/login/LoginFail";

		}
		

		return viewUrl;
	}
	
	// 회원 마이페이지 비밀번호 체크
	@RequestMapping(value = "/mypagePwdCheck.do", method = RequestMethod.GET)
	public String mypagePwdCheck(String memberEmail, String memberPassword, HttpSession session, Model model) {
		Logger.info("Welcome MemberController mypagePwdCheck! ");
		
		

		return "member/MemberMypagePwdCheck";
	}
	// 회원 마이페이지 비밀번호 체크
	@RequestMapping(value = "/mypagePwdCheckCtr.do", method = RequestMethod.POST)
	public String mypagePwdCheckCtr(int memberNo, String memberEmail, String memberPassword, HttpSession session, Model model) {
		Logger.info("Welcome MemberController mypagePwdCheckCtr!{},{} ", memberEmail, memberPassword);
		MemberDto memberDto = memberService.memberExistOne(memberEmail, memberPassword);

		String viewUrl = "";

		if (memberDto != null) {

			session.setAttribute("memberDto", memberDto);
			model.addAttribute("memberNo", memberNo);
			viewUrl = "redirect:/member/detail.do";
		} else {
			
			viewUrl =  "/member/pwdCheck";

		}
		

		return viewUrl;
	}

	// 회원 이메일/비밀번호 찾기 페이지 이동
	@RequestMapping(value = "/login/forgot.do", method = RequestMethod.GET)
	public String forgot(MemberDto memberDto,  Model model) {
		Logger.info("Welcome MemberController Forgot ");

		return "login/forgot";
	}
	//회원 이미일 찾기
	@RequestMapping(value = "/login/forgotCtr.do", method = RequestMethod.POST)
	public String forgotCtr(String memberName, String memberPhone, HttpSession session, Model model) {
		Logger.info("Welcome MemberController forgotCtr!memberName : {}  memberPhone : {} ", memberName, memberPhone);
		MemberDto memberDto = memberService.memberExistTwo(memberName, memberPhone);

		String viewUrl = "";

		if (memberDto != null) {

			session.setAttribute("memberDto", memberDto);

			viewUrl = "/login/forgotEmailView";
		} else {

			viewUrl = "/login/LoginFail";

		}

		return viewUrl;
	}
	
		//회원 비밀번호 찾기
		@RequestMapping(value = "/login/forgotPwdCtr.do", method = RequestMethod.POST)
		public String forgotPwdCtr(String memberEmail, String memberPhone, HttpSession session, Model model) {
			Logger.info("Welcome MemberController forgotCtr!memberEmail : {}  memberPhone : {} ", memberEmail, memberPhone);
			MemberDto memberDto = memberService.memberExistTree(memberEmail, memberPhone);

			String viewUrl = "";

			if (memberDto != null) {

				session.setAttribute("memberDto", memberDto);

				viewUrl = "/login/forgotPasswordView";
			} else {

				viewUrl = "/login/LoginFail";

			}

			return viewUrl;
		}



	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		Logger.info("Welcome MemberController logout! ");

		
//		session 파기
		session.invalidate();

		return "redirect:/login.do";
	}

	// 회원가입 Email 체크
	@RequestMapping(value = "/member/emailCheckCtr.do", method = RequestMethod.POST)
	public String memberEmailCheckCtr(MemberDto memberDto,  Model model) {
		Logger.info("Welcome MemberController memberEmailCheckCtr!{} ", memberDto);
		MemberDto memberDtoEmailCheck = memberService.memberSelectEmail(memberDto);
		if(memberDtoEmailCheck == null) {
			model.addAttribute("state", "pass");//회원 없을때
			
		}else if(memberDtoEmailCheck != null){
			model.addAttribute("state", "fail");//회원 있을때
		}
		model.addAttribute("memberDto", memberDto);

		return "redirect:/member/add.do";
	}
	
	// 회원가입  페이지로 이동 
	@RequestMapping(value = "/member/add.do", method = RequestMethod.GET)
	public String memberAdd(Model model) {
		Logger.info("Welcome MemberController memberAdd! ");
		

		return "member/MemberForm";
	}

//	addCtr.do
	// 회원가입 
	@RequestMapping(value = "/member/addCtr.do", method = RequestMethod.POST)
	public String memberAddCtr(MemberDto memberDto, MultipartHttpServletRequest mulRequest, Model model) {
		Logger.info("Welcome MemberController memberAddCtr!{} ", memberDto);

		try {
			memberService.memberInsertOne(memberDto, mulRequest);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("가입완료");
			e.printStackTrace();
		}

		return "redirect:/login.do";
	}

//  회원정보 업데이트 페이지 이동
	@RequestMapping(value = "/member/update.do", method = RequestMethod.GET)
	public String memberUpdate(int memberNo, Model model) {
		Logger.info("Welcome MemberController memberUpdate! " + "memberNo:{}" + memberNo);

		Map<String, Object> map = memberService.memberSelectOne(memberNo);

		MemberDto memberDto = (MemberDto) map.get("memberDto");

		model.addAttribute("memberDto", memberDto);
		return "member/MemberUpdateForm";
	}

	// 회원 캐시충전 비밀번호 체크
	@RequestMapping(value = "/cashPwdCheck.do", method = RequestMethod.POST)
	public String cashPwdCheck(String memberEmail, String memberPassword, HttpSession session, Model model) {
		Logger.info("Welcome MemberController loginCtr!{},{} ", memberEmail, memberPassword);
		MemberDto memberDto = memberService.memberExistOne(memberEmail, memberPassword);

		String viewUrl = "";

		if (memberDto != null) {

			session.setAttribute("memberDto", memberDto);

			viewUrl = "redirect:/updateCtr.do";
		} else {

			viewUrl = "/login/LoginFail";

		}

		return viewUrl;
	}

//  회원정보 업데이트
	@RequestMapping(value = "/member/updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(HttpSession session, int memberNo,MemberDto memberDto,
			MultipartHttpServletRequest multipartHttpServletRequest, Model model) {
		Logger.info("Welcome MemberController memberUpdateCtr! {} ", memberDto);

		int resultNum = 0;

		try {
			resultNum = memberService.memberUpdateOne(memberDto, multipartHttpServletRequest);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resultNum > 0) {
			MemberDto sessioMemberDto = (MemberDto) session.getAttribute("member");

			if (sessioMemberDto != null) {
				// 업데이트 정보
				if (sessioMemberDto.getMemberNo() == memberDto.getMemberNo()) {
					MemberDto newMemberDto = new MemberDto();
					newMemberDto.setMemberNo(memberDto.getMemberNo());
					newMemberDto.setMemberEmail(memberDto.getMemberEmail());
					newMemberDto.setMemberName(memberDto.getMemberName());
					newMemberDto.setMemberPhone(memberDto.getMemberPhone());
					newMemberDto.setMemberAddress(memberDto.getMemberAddress());
					newMemberDto.setMemberCash(memberDto.getMemberCash());

					session.removeAttribute("member");
					session.setAttribute("member", newMemberDto);

				}
			}

		}
		Logger.info("Welcome MemberController memberUpdateCtr! memberNo : {} ", memberNo);
		model.addAttribute("memberNo", memberNo);
		return "redirect:/member/detail.do";
	}


	// 마이페이지 이동
	@RequestMapping(value = "/member/detail.do", method = RequestMethod.GET)
	public String memberDetail(int memberNo,  Model model) {
		Logger.info("Welcome MemberController memberDetail! - " + "member_no: {}", memberNo);
		Map<String, Object> map = memberService.memberSelectOne(memberNo);

		MemberDto memberDto = (MemberDto) map.get("memberDto");

		model.addAttribute("memberDto", memberDto);
		
		
		return "member/MemberDetailView";
	}

	// 마이 캐시 페이지 이동
	@RequestMapping(value = "/member/cashDetail.do", method = RequestMethod.GET)
	public String memberCashDetail(int memberNo,  Model model) {
		Logger.info("Welcome MemberController memberCashDetail! - " + "member_no: {}", memberNo);
		Map<String, Object> map = memberService.memberSelectOne(memberNo);

		MemberDto memberDto = (MemberDto) map.get("memberDto");

		model.addAttribute("memberDto", memberDto);

		
		
		return "member/MemberCashView";
	}
	
	
	// 관리자 페이지 회원정보 리스트  이동
	@RequestMapping(value = "/admin/memberDetail.do", method = RequestMethod.GET)
	public String adminDetail(int memberNo, int curPage, Model model) {
		Logger.info("Welcome MemberController adminMemberDetail! - " + "member_no: {} curPage: {}  ", memberNo, curPage);
		Map<String, Object> map = memberService.memberSelectOne(memberNo);

		MemberDto memberDto = (MemberDto) map.get("memberDto");

		model.addAttribute("memberDto", memberDto);
		model.addAttribute("curPage", curPage);

		
		return "admin/userDetailView";
	}

}
