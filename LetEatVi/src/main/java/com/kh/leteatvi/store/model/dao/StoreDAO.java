package com.kh.leteatvi.store.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Order;
import com.kh.leteatvi.store.model.vo.OrderDetail;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.story.model.vo.Coupon;

public interface StoreDAO {

	int selectAllProductCount();

	List<Map<String, String>> selectProduct(int cPage, int numPerPage);

	Product selectOneProduct(int pno);

	List selectCategory(int cno);

	List selectAllCategory();
	
	Member selectOneMember(String userId);

	int insertPaymentInfo(Payment p);

	// 수량 없는 장바구니 추가
	//================================
	int selectOneCart(Cart cartProduct);
	int insertOneCart(Cart cartProduct);
	int deleteCart(Cart cartProduct);
	//================================
	
	
	// 수량 있는 장바구니 추가
	// ================================
	int insertOneCartWithQuantity(Cart cartCartWithQuantity);
	// ================================


	List selectAllCart(String userId);

	int insertOrderDetails(OrderDetail od);

	List<OrderDetail> selectList(String userId);

	List<OrderDetail> selectOidList(String userId);

	int selectPcount(String oid);

	List<Order> seletProductList(String userId);

	List<Order> selectproductDetail(String userId);

	Coupon selectCoupon(String userId);
}
