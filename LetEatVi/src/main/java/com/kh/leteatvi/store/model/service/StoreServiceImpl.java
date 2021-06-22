package com.kh.leteatvi.store.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.dao.StoreDAO;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Order;
import com.kh.leteatvi.store.model.vo.OrderDetail;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.story.model.vo.Coupon;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDAO storeDAO;

	// 전체 상품 수 확인
	@Override
	public int selectAllProductCount() {
		return storeDAO.selectAllProductCount();
	}

	// 페이징 처리
	@Override
	public List<Map<String, String>> selectProduct(int cPage, int numPerPage) {
		return storeDAO.selectProduct(cPage, numPerPage);
	}

	@Override
	public Product selectOneProduct(int pid) {
		return storeDAO.selectOneProduct(pid);
	}

	@Override
	public Product addCart(int pid) {
		return storeDAO.selectOneProduct(pid);
	}

	@Override
	public List selectCategory(int cid) {
		return storeDAO.selectCategory(cid);
	}

	@Override
	public List selectAllCategory() {
		return storeDAO.selectAllCategory();
	}

	@Override
	public Member selectOneMember(String userId) {
		return storeDAO.selectOneMember(userId);
	}

	@Override
	public int insertPaymentInfo(Payment p) {
		return storeDAO.insertPaymentInfo(p);
	}

	@Override
	public int insertOrderDetails(List<OrderDetail> orderList) {
		int result = 0;
		for(OrderDetail od : orderList) {
			result = storeDAO.insertOrderDetails(od);
			
			if(result != 1) {
				// 익셉션 처리
			}
		}
		
		return result;
	}
	

	@Override
	public List<OrderDetail> selectList(String userId) {
		
		return storeDAO.selectList(userId);
	}
	
	@Override
	public int insertOneCart(Cart cartProduct) {
		return storeDAO.insertOneCart(cartProduct);
	}
	
	@Override
	public int selectOneCart(Cart cartProduct) {
		return storeDAO.selectOneCart(cartProduct);
	}

	@Override
	public int deleteCart(Cart cartProduct) {
		return storeDAO.deleteCart(cartProduct);
	}

	@Override
	public int insertOneCartWithQuantity(Cart cartCartWithQuantity) {
		return storeDAO.insertOneCartWithQuantity(cartCartWithQuantity);
	}


	@Override
	public List selectAllCart(String userId) {
		return storeDAO.selectAllCart(userId);
	}

	@Override
	public List<OrderDetail> selectOidList(String userId) {
		return storeDAO.selectOidList(userId);
	}

	@Override
	public int selectPcount(String oid) {
		return storeDAO.selectPcount(oid);
	}

	@Override
	public List<Order> selectProductList(String userId) {
		return storeDAO.seletProductList(userId);
	}

	@Override
	public List<Order> selectproductDetail(String userId) {
		return storeDAO.selectproductDetail(userId);
	}

	@Override
	public Coupon selectCoupon(String userId) {
		return storeDAO.selectCoupon(userId);	
	}

}

