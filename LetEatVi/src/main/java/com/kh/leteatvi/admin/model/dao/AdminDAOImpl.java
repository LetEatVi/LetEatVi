package com.kh.leteatvi.admin.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.admin.model.vo.Message;
import com.kh.leteatvi.admin.model.vo.SalesChart;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	/* 21-06-19 12:33 dababy 상품삭제 메소드 추가, 코드 정리 */
	
	

	/* 상품 전체 조회 */
	@Override
	public List<AdminProduct> searchProductAll() {
		return sqlSession.selectList("admin-mapper.searchProductAll");
	}
	

	/* 상품 조회 */
	@Override
	public List<AdminProduct> searchProduct(String pname) {
		return sqlSession.selectList("admin-mapper.searchProduct", pname);
	}
	
	/* 상품 등록 */
	@Override
	public int insertProduct(AdminProduct p) {
		
		return sqlSession.insert("admin-mapper.insertProduct", p);
	}
	
	/* 상품 삭제 */
	@Override
	public int deleteProduct(int pid) {
		return sqlSession.delete("admin-mapper.deleteProduct", pid);
	}
	
	/*---------------------------------------------------------*/
	
	/* 회원 전체 조회 */
	@Override
	public List<Member> searchMemberAll() {
		return sqlSession.selectList("admin-mapper.searchMemberAll");
	}


	/* 회원 조회 */
	@Override
	public List<Member> searchMember(String userId) {

		return sqlSession.selectList("admin-mapper.searchMember", userId);
	}
	
	/* 회원 삭제 */
	@Override
	public int deleteMember(String userId) {
		return sqlSession.delete("admin-mapper.deleteMember", userId);
	}


	/*--------------------------String-------------------------------*/

	@Override
	public List<SalesChart> selectSellData() {
		return sqlSession.selectList("admin-mapper.selectSellData");
	}


	@Override
	public String selectTotalIncome() {
		return sqlSession.selectOne("admin-mapper.selectTotalIncome");
	}
	
	@Override
	public String selectTotalIncome(String date) {
		return sqlSession.selectOne("admin-mapper.selectDayIncome", date);
	}


	@Override
	public String selectTotalSell() {
		return sqlSession.selectOne("admin-mapper.selectTotalSell");
	}
	
	@Override
	public String selectTotalSell(String date) {
		return sqlSession.selectOne("admin-mapper.selectDaySell", date);
	}


	@Override
	public String selectTotalMember() {
		return sqlSession.selectOne("admin-mapper.selectTotalMember");
	}
	
	@Override
	public String selectTotalMember(String date) {
		return sqlSession.selectOne("admin-mapper.selectDayMember", date);
	}
	
	
	/*---------------------------------------------------------------*/
	
	@Override
	public int insertMessage(Message ms) {
		return sqlSession.insert("admin-mapper.insertMessage", ms);
	}


	@Override
	public List<Message> selectMessage() {
		return sqlSession.selectList("admin-mapper.selectMessage");
	}





	

}
