package com.kh.leteatvi.story.model.service;


import com.kh.leteatvi.story.model.vo.Coupon;
import com.kh.leteatvi.story.model.vo.memberUsed;

public interface storyService {

	String checkRouletteAble(String userId);

	Coupon selectCoupon(String couponType);

	int updateCouponMember(int couponId, String userId);

	int updateCouponStatus(String couponStatus, String userId);

	
	
	}
	

