package com.kh.leteatvi.story.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.story.model.dao.storyDAO;
import com.kh.leteatvi.story.model.vo.Coupon;
import com.kh.leteatvi.story.model.vo.memberUsed;

@Service
public class storyServiceImpl implements storyService {

	@Autowired
	storyDAO storyDAO;

	@Override
	public String checkRouletteAble(String userId) {
		
		return storyDAO.checkRouletteAble(userId);
	}

	@Override
	public Coupon selectCoupon(String couponType) {
		
		return storyDAO.selectCoupon(couponType);
	}


	@Override
	public int updateCouponMember(int cid, String userId) {
		
		return storyDAO.updateCouponMember(cid, userId);
	}

	@Override
	public int updateCouponStatus(String couponStatus, String userId) {
		
		return storyDAO.updateCouponStatus(couponStatus, userId);
	}



}
