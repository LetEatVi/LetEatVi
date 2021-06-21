package com.kh.leteatvi.survey.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.survey.model.vo.SurveyResult;

@Repository
public class SurveyDAOImpl implements SurveyDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int selectResult() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSurveyResult(SurveyResult sr) {
		
		return sqlSession.insert("survey.insertSurveyResult", sr);
	}



}
