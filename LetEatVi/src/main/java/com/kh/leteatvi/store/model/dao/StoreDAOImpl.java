package com.kh.leteatvi.store.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Order;
import com.kh.leteatvi.store.model.vo.OrderDetail;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.story.model.vo.Coupon;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int selectAllProductCount() {
		return sqlSession.selectOne("store.selectAllProductCount");
	}

	@Override
	public List<Map<String, String>> selectProduct(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);

		return sqlSession.selectList("store.selectProduct", null, rows);
	}

	@Override
	public Product selectOneProduct(int pid) {
		return sqlSession.selectOne("store.selectOneProduct", pid);
	}

	@Override
	public List selectCategory(int cid) {
		return sqlSession.selectList("store.selectCategory", cid);
	}
	
	@Override
	public List selectAllCategory() {
		return sqlSession.selectList("store.selectAllCategory");
	}

	@Override
	public Member selectOneMember(String userId) {
		return sqlSession.selectOne("store.selectOneMember", userId);
	}

	@Override
	public int insertPaymentInfo(Payment p) {
		return sqlSession.insert("store.insertPaymentInfo", p);
	}
	
	@Override
	public int insertOrderDetails(OrderDetail od) {
		return sqlSession.insert("store.insertOrderDetail", od);
	}
	
	@Override
	public List<OrderDetail> selectList(String userId) {
		return sqlSession.selectList("store.selectOrderDetailList", userId);
	}
	
	@Override
	public int insertOneCart(Cart cartProduct) {
		return sqlSession.insert("store.insertOneCart", cartProduct);
	}

	@Override
	public int selectOneCart(Cart cartProduct) {
		return sqlSession.selectOne("store.selectOneCart", cartProduct);
	}

	@Override
	public int deleteCart(Cart cartProduct) {
		return sqlSession.delete("store.deleteCart", cartProduct);
	}

	@Override
	public int insertOneCartWithQuantity(Cart cartCartWithQuantity) {
		return sqlSession.insert("store.insertOneCartWithQuantity", cartCartWithQuantity);
	}


	@Override
	public List selectAllCart(String userId) {
		return sqlSession.selectList("store.selectAllCart", userId);
	}

	@Override
	public List<OrderDetail> selectOidList(String userId) {
		return sqlSession.selectList("store.selectOidList", userId);
	}

	@Override
	public int selectPcount(String oid) {
		return sqlSession.selectOne("store.selectPcount", oid);
	}

	@Override
	public List<Order> seletProductList(String userId) {
		return sqlSession.selectList("store.selectProductList", userId);
	}

	@Override
	public List<Order> selectproductDetail(String userId) {
		return sqlSession.selectList("store.selectproductDetail", userId);
	}

	@Override
	public Coupon selectCoupon(String userId) {
		return sqlSession.selectOne("store.selectCoupon", userId);
	}

}

