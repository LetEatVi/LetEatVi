package com.kh.leteatvi.store.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.leteatvi.common.Utils;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.service.StoreService;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.OrderDetail;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.story.model.vo.Coupon;

@Controller
public class storeController {
	
	@Autowired
	StoreService storeService;
	
	// 다른 페이지에서 스토어 페이지 선택 시
	// ============================================== //
	@RequestMapping("/store/goStore.do")
	public String goStore(@RequestParam(value="cPage", required=false, defaultValue="1") int cPage, Model model) {
		// 한 페이지당 상품 수
		int numPerPage = 9;
		
		List<Map<String, String>> productList = storeService.selectProduct(cPage, numPerPage);
		
		// 전체 상품 수
		int totalProductCount = storeService.selectAllProductCount();
		
		String pageBar = Utils.getPageBar(totalProductCount, cPage, numPerPage, "goStore.do");
		
		model.addAttribute("productList", productList);
		model.addAttribute("totalProductCount", totalProductCount);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		return "store/storeHome";
	}
	// ============================================== //
	
	
	// 스토어 페이지에서 상품 상세보기 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/selectProduct.do")
	public String selectProduct(@RequestParam int pid, Model model) {
		Product p = storeService.selectOneProduct(pid);
		
		model.addAttribute("selectProduct", p);
		model.addAttribute("pid", pid);
		
		return "store/product";
	}
	// ============================================== //
	
	
	// 결제하기 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/goPayment.do")
	public String goPayment(@RequestParam int pid, @RequestParam int qno, @RequestParam String userId, Model model) {
		Product p = storeService.selectOneProduct(pid);
		Member m = storeService.selectOneMember(userId);
		
		model.addAttribute("selectProduct", p);
		model.addAttribute("qno", qno);
		
		return "store/payment";
	}
	// ============================================== //
	
	
	// 장바구니 추가 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/addCart.do")
	@ResponseBody
	public void addCart(@RequestParam int pid, @RequestParam String userId) {
		Cart cartProduct = new Cart(userId, pid);
		
		int selectCart = storeService.selectOneCart(cartProduct);
		
		if(selectCart == 0) {
			int addCart = storeService.insertOneCart(cartProduct);
		}
		else {
			int deleteCart = storeService.deleteCart(cartProduct);
			
			int addCart = storeService.insertOneCart(cartProduct);
		}
		
	}
	// ============================================== //
	
	
	
	// 장바구니 추가 버튼 클릭 시(수량 포함)
	// ============================================== //
	@RequestMapping("/store/addCartWithQuantity.do")
	@ResponseBody
	public void addCartWithQuantity(@RequestParam String userId, @RequestParam int pid, @RequestParam int qno) {
		
		Cart cartProduct = new Cart(userId, pid);
		Cart cartCartWithQuantity = new Cart(userId, pid, qno);
		
		int selectCart = storeService.selectOneCart(cartProduct);
		
		if(selectCart == 0) {
			int addCart = storeService.insertOneCartWithQuantity(cartCartWithQuantity);
		}
		else {
			int deleteCart = storeService.deleteCart(cartProduct);
			
			int addCart = storeService.insertOneCartWithQuantity(cartCartWithQuantity);
		}
	}
	// ============================================== //
	
	
	
	// 카테고리별 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/selectCategory.do")
	@ResponseBody
	public List selectCategory(@RequestParam int cid, @RequestParam(value="cPage", required=false, defaultValue="1") int cPage) {
		
		if(cid == 0) {
			List cList = storeService.selectAllCategory();
			
//			int numPerPage = 9;
//			
//			List<Map<String, String>> productList = storeService.selectProduct(cPage, numPerPage);
//			
//			int CategoryProductCount = storeService.selectAllProductCount();
//			
//			String pageBar = Utils.getPageBar(CategoryProductCount, cPage, numPerPage, "goStore.do");
//
//			System.out.println(cList);
			
			return cList;
		}
		
		else {
			List cList = storeService.selectCategory(cid);
			
			return cList;
		}
		
	}
	// ============================================== //
	

	// 결제 완료 시 페이지 이동 예정
	// ============================================== //
	@RequestMapping("/store/insertPaymentInfo.do")
	@ResponseBody
	public Payment insertPaymentInfo(Payment p, @RequestParam String orderList_json) {
		
		List<OrderDetail> orderList = Arrays.asList(new Gson().fromJson(orderList_json, OrderDetail[].class));

		int addPaymentInfo = storeService.insertPaymentInfo(p);
		int result2 = storeService.insertOrderDetails(orderList);
		
		return p;

	}
	
	@RequestMapping("store/goCart.do")
	public String goCart(@RequestParam String userId, Model model) {
		
		List cartList = new ArrayList();
		
		cartList = storeService.selectAllCart(userId);
		Coupon cp = storeService.selectCoupon(userId);
		
		model.addAttribute("cartList", cartList);
		model.addAttribute("coupon", cp);
		
		return "store/cart";
	}
	
}