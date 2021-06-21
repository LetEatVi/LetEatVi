package com.kh.leteatvi.survey.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SurveyContent {

	private int surveyType; // 설문조사 타입
	private boolean answer[]; // 항목 답변 ex) [ true, false, true, true ]
}