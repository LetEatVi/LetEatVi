package com.kh.leteatvi.survey.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class surveyMember implements Serializable {

	private String userId;
	private String userName;
	private String age;
	private String gender;
	private SurveyContent[] surveyAnswer;
	private int height;
	private int weight;
}
