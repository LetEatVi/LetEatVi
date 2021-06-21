package com.kh.leteatvi.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.leteatvi.member.model.service.MemberService;
import com.kh.leteatvi.member.model.vo.Member;

@Controller
public class MyPageController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("/myPage/myPageHome.do")
	public String myPage() throws Exception {
		
		return "myPage/myPageHome";
	}
	
	@RequestMapping("/myPage/memberView.do")
	public String memberView(@RequestParam String userId, Model model) {
		
		Member result = memberService.selectOneMember(userId);
		
		model.addAttribute("member", result);
		
		return "myPage/myPageView";
	}
	
	@RequestMapping("/member/updateMember.do")
	public String updateMember(Member member, Model model) {
		
		int result = memberService.updateMember(member);
		
		String loc= "/";
		String msg = "";
		
		if( result > 0 ) {
			msg = "회원 정보 수정 완료!";
			model.addAttribute("member", member);
		} else {
			msg = "회원 정보 수정 실패";
		}
		
		model.addAttribute("loc", loc);
		model.addAttribute("msg", msg);
		
		return "common/msg";
		
	}
	

	@RequestMapping(value = "/myPage/orderList.do")
	public String myOrderList() throws Exception {
		
		return "myPage/orderList";
	}

	@RequestMapping(value = "/myPage/orderDetail.do")
	public String myOrderDetail() throws Exception {
		
		return "myPage/orderDetail";
	}

}
