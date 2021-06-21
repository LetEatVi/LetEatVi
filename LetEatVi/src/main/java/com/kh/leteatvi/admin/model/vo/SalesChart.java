package com.kh.leteatvi.admin.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import oracle.sql.DATE;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SalesChart implements Serializable{

	private static final long serialVersionUID = 321232L;
	
	/*
	 * Auth : DABABY
	 * Date : 21/06/19
	 * Memo : 상품 판매 현황 차트를 만들기 위한 vo입니다.
	 * 
	 * 
	 * */
	private String salesdate;
	private int quantity;
	private int totalincome;
	
	private String date;

	
	
	
	
	
}                  
