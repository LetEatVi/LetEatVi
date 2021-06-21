package com.kh.leteatvi.admin.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import oracle.sql.DATE;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message implements Serializable{

	private static final long serialVersionUID = 1123L;
	
	/*
	 * Auth : DABABY
	 * Date : 21/06/21
	 * Memo : 메세지 전송과 조회를 위한 vo입니다.
	 * 
	 * 
	 * */
	
	// private int messageId;
	private String userId;
	private String message;
	// private String status;

	
}                  
