package com.kh.leteatvi.store.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class OrderDetail {

	private String oid;
	private int pid;
	private int qty;
	private String pname;
	private int pprice;
	private String userId;
	private Date oenroll;
	private String ocomment;
	private String addressee;
	private String address;
	private String phone;
	private int totalprice;
	private String pinfo;
	private List<Product> plist;
	
	public OrderDetail(String oid, String userId) {
		this.oid = oid;
		this.userId = userId;
	}
	
}