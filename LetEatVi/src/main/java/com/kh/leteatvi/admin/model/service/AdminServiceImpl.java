package com.kh.leteatvi.admin.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.admin.model.dao.AdminDAO;
import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.admin.model.vo.Message;
import com.kh.leteatvi.admin.model.vo.SalesChart;
import com.kh.leteatvi.member.model.dao.MemberDAO;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.dao.StoreDAO;
import com.kh.leteatvi.store.model.vo.Product;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	StoreDAO storeDAO;
	
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	AdminDAO adminDAO;
	
	
	/* 21-06-19 12:33 dababy 상품삭제 메소드 추가, 코드 정리 */
	
	
	/* 상품 전체 조회 */
	@Override
	public List<AdminProduct> searchProductAll() {
		return adminDAO.searchProductAll();
	}

	/* 상품 조회 */
	@Override
	public List<AdminProduct> searchProduct(String pname) {
		return adminDAO.searchProduct(pname);
	}
	
	/* 상품 등록 */
	@Override
	public int insertProduct(AdminProduct p) {
		
		return adminDAO.insertProduct(p);
	}
	
	/* 상품 삭제 */
	@Override
	public int deleteProduct(int pid) {
		return adminDAO.deleteProduct(pid);
	}
	
	/*-------------------------------------------------*/
	
	/* 회원 전체 조회 */
	@Override
	public List<Member> searchMemberAll() {
		return adminDAO.searchMemberAll();
	}


	/* 회원 조회 */
	@Override
	public List<Member> searchMember(String userId) {
		return adminDAO.searchMember(userId);
	}
	
	/* 회원 삭제 */
	@Override
	public int deleteMember(String userId) {
		return adminDAO.deleteMember(userId);
	}

	/*-------------------------------------------------*/
	@Override
	public List<SalesChart> selectSellData() {
		return adminDAO.selectSellData();
	}

	@Override
	public String selectTotalIncome() {
		return adminDAO.selectTotalIncome();
	}

	@Override
	public String selectTotalIncome(String date) {
		return adminDAO.selectTotalIncome(date);
	}

	
	@Override
	public String selectTotalSell() {
		return adminDAO.selectTotalSell();
	}
	
	@Override
	public String selectTotalSell(String date) {
		return adminDAO.selectTotalSell(date);
	}

	@Override
	public String selectTotalMember() {
		return adminDAO.selectTotalMember();
	}


	@Override
	public String selectTotalMember(String date) {
		return adminDAO.selectTotalMember(date);
	}

	
	/*-----------------------------------------------------*/
	
	@Override
	public int insertMessage(Message ms) {
		return adminDAO.insertMessage(ms);
	}

	@Override
	public List<Message> selectMessage() {
		return adminDAO.selectMessage();
	}






}
