package com.kh.leteatvi.store.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {

	private int pid;
	private String pname;
	private int pprice;
	private String pinfo;
	private String oid;
	private int quantity;
	private int totalPrice;
	private String ocomment;
	private String addressee;
	private String address;
	private String phone;
	private Date oenroll;
	
	public Order(String pname, String oid, int totalPrice, Date oenroll) {
		super();
		this.pname = pname;
		this.oid = oid;
		this.totalPrice = totalPrice;
		this.oenroll = oenroll;
	}
	
}




