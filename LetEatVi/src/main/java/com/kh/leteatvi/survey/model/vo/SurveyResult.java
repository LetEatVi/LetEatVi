package com.kh.leteatvi.survey.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SurveyResult {
	
	private String userId;
	private String userName;
	private String age;
	private String email;
	private String gender;
	private int height;
	private int weight;
	private int answerType;
	private int result1;
	private int result2;
	private int result3;
	private int result4;
	
	/*  화면에서 주는 데이터  */
	private String interestList;
	
	private String answer_q1;
	private String answer_q2;
	private String answer_q3;
	private String answer_q4;
	private String answer_q5;
	private String answer_q6;
	/*  화면에서 주는 데이터  */
	
}
