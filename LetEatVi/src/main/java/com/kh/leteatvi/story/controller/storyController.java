package com.kh.leteatvi.story.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.story.model.vo.Coupon;
import com.kh.leteatvi.story.model.service.storyService;


@SessionAttributes({"member"})
@Controller
public class storyController {
	
	
	@Autowired
	storyService storyService;
	

	// 스토리페이지로 이동
	@RequestMapping("/story/goStory.do")
	public String goStory() {
		
		
		return "story/storyPage";
	}

	// 라이프페이지로 이동
	@RequestMapping("/story/goLife.do")
	public String goLife() {
		
		
		return "story/life";
	}
	
	// 뉴트리션페이지로 이동
	@RequestMapping("/story/goNutrition.do")
	public String goNutrition() {
		
		
		return "story/nutriTion";
	}
	
	// 이벤트페이지로 이동
	@RequestMapping("/story/goEvent.do")
	public String goEvent() {
		
		
		return "story/event";
	}
	
	// 룰렛 페이지로 이동 시 아이디와 쿠폰획득 여부
	@RequestMapping("/story/goEventPage1.do")
	public String goEventPage1(Member member, Model model) {
		
		String couponStatus = storyService.checkRouletteAble(member.getUserId()); 
		
		model.addAttribute("couponStatus", couponStatus);
		
		System.out.println("무야호 : " + couponStatus);
		
		return "story/eventPage1";
	}
		
	// 룰렛 stop 시 결과 서버에서 받고 database로 송출
	@RequestMapping(value = "/story/getCoupon.do", method = RequestMethod.POST)
	@ResponseBody
	public Map resultRoulette(@RequestParam String couponType, @RequestParam String userId, HttpServletResponse res, Member member,Model model) {
		res.setCharacterEncoding("utf-8");
		
		System.out.println(couponType + ", " + userId);
		
		HashMap<String, String> map = new HashMap<>();
		
		map.put("msg", couponType);
		
		Coupon coupon = storyService.selectCoupon(couponType);
		
		// 클라이언트에서 받은 상품이름을 DB(Coupon)의 쿠폰이름과 같다면 Member DB에 그 쿠폰의 COUPONID 추가하기
		
		System.out.println(couponType + " , " + coupon.getCoupon_Id());
		 
		int couponId = coupon.getCoupon_Id();
		
		int updateCoupon = storyService.updateCouponMember(couponId, userId);
		
		
	    int usingCoupon = storyService.updateCouponStatus(member.getCouponStatus(), userId); 
	    
		return map;
		
	}
	
	
}
