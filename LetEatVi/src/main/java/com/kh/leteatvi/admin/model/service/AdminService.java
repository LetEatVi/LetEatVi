package com.kh.leteatvi.admin.model.service;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

public interface AdminService {


	  List<AdminProduct> searchProduct(String pname);
	 // List searchProduct(String pname);
	  
	  List<AdminProduct> searchProductAll();
	  
	  List<Member> searchMember(String userId);
	  
	  List<Member> searchMemberAll();
	  
	  int insertProduct(AdminProduct p);

}
