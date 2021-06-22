package com.kh.leteatvi.survey.model.service;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;
import com.kh.leteatvi.survey.model.vo.SurveyResult;

public interface SurveyService {

	int selectResult();

	int insertSurveyResult(List<SurveyResult> svList);
}
