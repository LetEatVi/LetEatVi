package com.kh.leteatvi.story.model.dao;

import com.kh.leteatvi.story.model.vo.Coupon;
import com.kh.leteatvi.story.model.vo.memberUsed;

public interface storyDAO {

	String checkRouletteAble(String userId);

	Coupon selectCoupon(String couponType);

	int updateCouponMember(int couponId, String userId);

	
}
