package com.kh.leteatvi.survey.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.kh.leteatvi.survey.model.service.SurveyService;
import com.kh.leteatvi.survey.model.vo.SurveyResult;
import com.kh.leteatvi.survey.model.vo.surveyMember;
@SessionAttributes("gst")
@Controller
public class surveyController {

	@Autowired
	SurveyService surveyService;
	
	@RequestMapping("/survey/survey.do")
	public String survey(Model model) {
		
		System.out.println("설문 시작");
		
		return "survey/startSurvey";
	}
	
	@RequestMapping("/survey/survey1.do")
	public String survey1(Model model) {
		
		System.out.println("첫번째, 기본 정보 입력");
		return "survey/01_Survey";
	}
	
	@RequestMapping("/survey/survey2.do")
	public String survey2(surveyMember gst,Model model) {
		
		System.out.println("두번째, 기본정보 입력");
		
		return "survey/02_Survey";
	}
	
	@RequestMapping("/survey/survey3.do")
	public String survey3(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 공간");
		
		return "survey/03_Survey";
	}
	
	@RequestMapping("/survey/survey4.do")
	public String survey4(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 1");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/04_Survey";
	}
	
	@RequestMapping("/survey/survey5.do")
	public String survey5(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 2");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/05_Survey";
	}
	
	@RequestMapping("/survey/survey6.do")
	public String survey6(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 3");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/06_Survey";
	}
	
	@RequestMapping("/survey/survey7.do")
	public String survey7(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 4");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/07_Survey";
	}
	
	@RequestMapping("/survey/survey8.do")
	public String survey8(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 5");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/08_Survey";
	}
	
	@RequestMapping("/survey/survey9.do")
	public String survey9(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력 6");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/09_Survey";
	}
	
	@RequestMapping("/survey/survey10.do")
	public String survey10(surveyMember gst,Model model) {
		
		System.out.println("네번째, 기타정보 신장 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/10_Survey";
	}
	
	@RequestMapping("/survey/survey11.do")
	public String survey11(surveyMember gst,Model model) {
		
		System.out.println("네번째, 기타정보 체중 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/11_Survey";
	}
	
	
	@RequestMapping("/survey/resultSurvey.do")
	public String survey12(surveyMember gst,Model model) {
		
		
		System.out.println("마지막, 결과페이지");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/resultSurvey";
	}
	
	@RequestMapping("/survey/saveSurvey.do")
	@ResponseBody
	public int survey12(String data) {
		
		SurveyResult svData = new Gson().fromJson(data, SurveyResult.class);
		List<SurveyResult> svList = new ArrayList<>();
		
		for(int i= 0 ; i < 6 ; i++ ) {
			int answerType = Integer.parseInt(svData.getInterestList().split(",")[i]);
			
			if(answerType != 0) {
				String answer_q = "";
				
				switch(i) {
				case 0 : answer_q = svData.getAnswer_q1(); break;
				case 1 : answer_q = svData.getAnswer_q2(); break;
				case 2 : answer_q = svData.getAnswer_q3(); break;
				case 3 : answer_q = svData.getAnswer_q4(); break;
				case 4 : answer_q = svData.getAnswer_q5(); break;
				case 5 : answer_q = svData.getAnswer_q6(); break;
				}
				
				svData.setAnswerType(i);
				svData.setResult1(answer_q.split(",")[0].equals("true") ? 1 : 0);
				svData.setResult2(answer_q.split(",")[1].equals("true") ? 1 : 0);
				svData.setResult3(answer_q.split(",")[2].equals("true") ? 1 : 0);
				svData.setResult4(answer_q.split(",")[3].equals("true") ? 1 : 0);
				
				svList.add(svData);
			}
		}
		
		int result = surveyService.insertSurveyResult(svList);
		System.out.println(data);
		System.out.println(svData);
		
		return 0;
	}
	
	
}
