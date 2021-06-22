package com.kh.leteatvi.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.leteatvi.admin.model.service.AdminService;
import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.admin.model.vo.Message;
import com.kh.leteatvi.admin.model.vo.SalesChart;
import com.kh.leteatvi.member.model.service.MemberService;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.service.StoreService;

//@SessionAttributes({"member"})
@Controller
public class AdminController {

	@Autowired
	MemberService memberService;

	@Autowired
	StoreService storeService;

	@Autowired
	AdminService adminService;

	/**
	 * 
	 * Auth : DABABY Date : 2021-06-11 관리자 페이지 - 1. 메인 2. 상품 관리 3. 회원 관리
	 * 
	 */

	/* 관리자 페이지 메인 - Best Selling, Sales Chart, */
	@RequestMapping("/admin/adminMain.do")
	public String adminMain(Model model) {

		// 월별 총 판매량
		List<SalesChart> totalSales = adminService.selectSellData();

		// 총 판매 수익
		String totalIncome = adminService.selectTotalIncome();
		
		// 총 판매 수량
		String totalSell = adminService.selectTotalSell();
		
		// 총 회원 수
		String totalMember = adminService.selectTotalMember();
		
		// 메세지 목록 조회
		List<Message> message = adminService.selectMessage();

		System.out.println(totalSales);
		System.out.println(totalIncome);
		System.out.println(totalSell);
		System.out.println(totalMember);
		System.out.println(message);
				

		model.addAttribute("totalSales", totalSales);
		model.addAttribute("totalIncome", totalIncome);
		model.addAttribute("totalSell", totalSell);
		model.addAttribute("totalMember", totalMember);
		model.addAttribute("message", message);
		

		return "/admin/adminMain";

	}

	

	/* 상품 관리 페이지 - 상품 전체 조회, 상품 검색, 상품 등록, 상품 삭제 */
	@RequestMapping("/admin/adminProduct.do")
	public String adminProduct(Model model) {

		// 처음에는 모든 상품 정보가 나오도록
		List<AdminProduct> ap = adminService.searchProductAll();
		
		// 메세지 목록 조회
		List<Message> message = adminService.selectMessage();

		model.addAttribute("ap", ap);
		model.addAttribute("message", message);

		return "/admin/adminProduct";

	}

	// 상품 조회
	// 매개변수로 카테고리와 상품 이름 받음.
	@RequestMapping("/admin/adminSearchProduct.do")
	@ResponseBody
	public List<AdminProduct> productSearch(String pname, Model model) {

		// Debug 1 - Check Parameter
		System.out.println(pname);

		List<AdminProduct> ap = adminService.searchProduct(pname);

		// Debug 2 - Check Result
		System.out.println(ap);

		model.addAttribute("ap", ap);

		return ap;

		// return "/admin/adminProduct";

	}

	// 상품 등록
	// 매개변수로 카테고리와 상품 이름 받음.
	@RequestMapping("/admin/adminInsertProduct.do")
	@ResponseBody
	public int productInsert(AdminProduct p) {

		// Debug 1 - Check Parameter
		System.out.println(p);

		int result = adminService.insertProduct(p);

		// Debug 2 - Check Result
		System.out.println(result);

		return result;

		// return "/admin/adminProduct";

	}

	/* 21-06-19 12:33 dababy 상품삭제 메소드 추가 */

	/* 2. 상품 삭제 */
	
	@RequestMapping("/admin/adminDeleteProduct.do")
	@ResponseBody
	public int productDelete(int pid) {

		// Debug 1 - Check Parameter
		System.out.println(pid);

		int result = adminService.deleteProduct(pid);

		// Debug 2 - Check Result
		System.out.println(result);

		return result;

	}

	/*-----------------------------------------------------------------------------------------*/

	/* 회원 관리 페이지 - 회원 전체 조회, 회원 검색, 회원 강퇴 */
	@RequestMapping("/admin/adminMember.do")
	public String adminMember(Model model) {

		// 처음에는 모든 상품 정보가 나오도록
		List<Member> mb = adminService.searchMemberAll();
		
		// 메세지 목록 조회
		List<Message> message = adminService.selectMessage();


		model.addAttribute("mb", mb);
		model.addAttribute("message", message);

		return "/admin/adminMember";

	}

	/* 1. 회원 검색 */

	@RequestMapping("/admin/adminSearchMember.do")
	@ResponseBody
	public List<Member> memberSearch(String userId, Model model) {

		// Debug 1 - Check Parameter
		System.out.println(userId);

		List<Member> mb = adminService.searchMember(userId);

		// Debug 2 - Check Result
		System.out.println(mb);

		model.addAttribute("mb", mb);

		return mb;

	}
	
	/* 2. 회원 삭제 */
	
	@RequestMapping("/admin/adminDeleteMember.do")
	@ResponseBody
	public int memberDelete(String userId) {

		// Debug 1 - Check Parameter
		System.out.println(userId);

		int result = adminService.deleteMember(userId);

		// Debug 2 - Check Result
		System.out.println(result);

		return result;

	}
	
	
	/*-------------------------------------------------------------*/
	/* Message Controller */
	
	/* 1. Message 등록 */
	@RequestMapping("/admin/InsertMessage.do")
	@ResponseBody
	public int messageInsert(@RequestParam String userId, @RequestParam String message) {

		// Debug 1 - Check Parameter
		System.out.println(userId);
		System.out.println(message);
		
		// Insert Param Into Object
		Message ms = new Message();
		
		ms.setUserId(userId);
		ms.setMessage(message);
		
		// Debug 2 - Check Object
		System.out.println(ms);

		int result = adminService.insertMessage(ms);
		

		// Debug 3 - Check Result
		System.out.println(result);

		return result;
	}
	
	/* 2. Message 목록 조회 */
	@RequestMapping("/admin/selectMessage.do")
	@ResponseBody
	public List<Message> messageSelect() {
		
		List<Message> message = adminService.selectMessage();


		// Debug 3 - Check Result
		System.out.println(message);

		return message;
	}
	
	/*-------------------------------------------------------------*/
	/* Report Controller */
	@RequestMapping("/admin/adminReport.do")
	public String adminReport(String date, Model model) {
		
		// Debug 1 - Check Parameter
		System.out.println(date);

		// 월별 총 판매량
		List<SalesChart> totalSales = adminService.selectSellData();

		// 선택 날짜의 판매 수익
		String totalIncome = adminService.selectTotalIncome(date);
		
		// 선택 날짜의 판매 수량
		String totalSell = adminService.selectTotalSell(date);
		
		// 선택 날짜에 가입한 회원 수
		String totalMember = adminService.selectTotalMember(date);
		
		// 메세지 목록 조회
		List<Message> message = adminService.selectMessage();

		System.out.println(totalSales);
		System.out.println(totalIncome);
		System.out.println(totalSell);
		System.out.println(totalMember);
		System.out.println(message);
		

		

		model.addAttribute("totalSales", totalSales);
		model.addAttribute("totalIncome", totalIncome);
		model.addAttribute("totalSell", totalSell);
		model.addAttribute("totalMember", totalMember);
		model.addAttribute("message", message);

		return "/admin/adminReport";

	}

}