package com.kh.leteatvi.myPage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.leteatvi.member.model.service.MemberService;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.service.StoreService;
import com.kh.leteatvi.store.model.vo.Order;
import com.kh.leteatvi.store.model.vo.OrderDetail;

@SessionAttributes({"member"})
@Controller
public class MyPageController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("/myPage/myPageHome.do")
	public String myPage(Member member, Model model) throws Exception {

//		List<OrderDetail> orderList = storeService.selectList(member.getUserId());
//		List<OrderDetail> oidList = storeService.selectOidList(member.getUserId());
//		
//		System.out.println(orderList);
//		System.out.println(oidList);
//		
//		model.addAttribute("orderList", orderList);
//		model.addAttribute("oidList", oidList);
		
		return "myPage/myPageHome";
	}
	
	@RequestMapping("/myPage/myOrder.do")
	public String myOrder(Member member, Model model) throws Exception {

		int pcount = 0;
		
		// oid 가져오기 용도
		List<OrderDetail> oidList = storeService.selectOidList(member.getUserId());
		
		// ~~ 상품 외 n개 뽑아오기 용도
		List<Integer> pc = new ArrayList<Integer>();
		
		// 아이디별 구매한 상품 / 결제 정보 가져오기 용도
		List<Order> productList = storeService.selectProductList(member.getUserId());
		
		
		for(int i = 0; i < oidList.size(); i++) {
			pcount = storeService.selectPcount(oidList.get(i).getOid());
			pc.add(pcount);		
		}
		
		model.addAttribute("productList", productList);
		model.addAttribute("oidList", oidList);
		model.addAttribute("pcount", pc);
		
		return "myPage/orderList";
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
	public String myOrderDetail(Member member, Model model) throws Exception {
		
		List<Order> productDetail = storeService.selectproductDetail(member.getUserId());
		
		System.out.println("productDetail : " + productDetail);
		
		model.addAttribute("productDetail", productDetail);

		return "myPage/orderDetail";
	}

}
