package com.kh.leteatvi.store.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product implements Serializable{

	private static final long serialVersionUID = 1L;
	
//	private int pno;
//	private String pname;
//	private int pprice;
//	private String pcontent;
//	private String pcName;
	
	private int pid;			// pno
	private int cid; 
	private String pname;	//pname
	private int pprice;		// pprice
	private String pinfo;		// pcontent
	private int pstock;
	private Date penroll;
	private int psell;
	
	private String cname;	//pcName
}                  
