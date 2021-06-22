package com.kh.leteatvi.admin.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import oracle.sql.DATE;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminProduct implements Serializable{

	private static final long serialVersionUID = 11234L;
	
	/*
	 * Auth : DABABY
	 * Date : 21/06/15
	 * Memo : 상품조회와 상품등록, 삭제를 위한 product, category 통합 vo 입니다.
	 * 
	 * 
	 * */
	
	// product vo
	private int pid;
	private int cid;
	private String pname;
	private int pprice;
	private String pinfo;
	private int pstock;
	private DATE penroll;
	// private DATE pupdate;
	private int psell;
	
	
	// category vo
	
	// private int cid;
	private String cname;
	
	
	
	
}                  
