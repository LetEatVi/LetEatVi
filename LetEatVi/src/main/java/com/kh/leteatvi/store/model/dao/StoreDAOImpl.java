package com.kh.leteatvi.store.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

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

}

