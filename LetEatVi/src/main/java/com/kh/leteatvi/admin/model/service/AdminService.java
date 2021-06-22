package com.kh.leteatvi.admin.model.service;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.admin.model.vo.Message;
import com.kh.leteatvi.admin.model.vo.SalesChart;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

public interface AdminService {

	
	/* 21-06-19 12:33 dababy 상품삭제 메소드 추가, 코드 정리 */

	  List<AdminProduct> searchProduct(String pname);
	  
	  List<AdminProduct> searchProductAll();
	  
	  int insertProduct(AdminProduct p);
	  
	  int deleteProduct(int pid);
	  
	  /* ------------------------------------------------ */
	  
	  List<SalesChart> selectSellData();
	  
	  String selectTotalIncome();
	  
	  String selectTotalIncome(String date);
	  
	  String selectTotalSell();
	  
	  String selectTotalSell(String date);
	  
	  String selectTotalMember();
	  
	  String selectTotalMember(String date);

	  /* ------------------------------------------------ */
	  
	  List<Member> searchMember(String userId);
	  
	  List<Member> searchMemberAll();
	  
	  int deleteMember(String userId);
	  
	  /* ------------------------------------------------ */
	  
	  int insertMessage(Message ms);
	  
	  List<Message> selectMessage();

	
}
