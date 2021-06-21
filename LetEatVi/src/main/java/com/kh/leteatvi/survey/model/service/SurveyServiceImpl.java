package com.kh.leteatvi.survey.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.dao.StoreDAO;
import com.kh.leteatvi.store.model.service.StoreService;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.survey.model.dao.SurveyDAO;
import com.kh.leteatvi.survey.model.vo.SurveyResult;

@Service
public class SurveyServiceImpl implements SurveyService {

	@Autowired
	SurveyDAO surveyDAO;

	// 결과 받아오기
	@Override
	public int selectResult() {
		return surveyDAO.selectResult();
	}

	@Override
	public int insertSurveyResult(List<SurveyResult> svList) {
		int result = 0;
		
		for(SurveyResult sr : svList) {
			result = surveyDAO.insertSurveyResult(sr);
		}
		
		return result;
	}

	
}
