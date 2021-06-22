package com.kh.leteatvi.story.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.story.model.vo.Coupon;
import com.kh.leteatvi.story.model.vo.memberUsed;

@Repository
public class storyDAOImpl implements storyDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public String checkRouletteAble(String userId) {
		
		return sqlSession.selectOne("roulette-mapper.intoRoulette", userId);
	}

	@Override
	public Coupon selectCoupon(String couponType) {
		
		return sqlSession.selectOne("roulette-mapper.getCoupon", couponType);
	}


	@Override
	public int updateCouponMember(int couponId, String userId) {
		Member sendMember = new Member();
		sendMember.setCouponId(couponId);
		sendMember.setUserId(userId);
		return sqlSession.update("member-mapper.updateCoupon", sendMember);
	}

	@Override
	public int updateCouponStatus(String couponStatus, String userId) {
		Member updateCouponSts = new Member();
		updateCouponSts.setCouponStatus(couponStatus);
		updateCouponSts.setUserId(userId);
		return sqlSession.update("member-mapper.updateCouponSts", updateCouponSts);
	}

}
