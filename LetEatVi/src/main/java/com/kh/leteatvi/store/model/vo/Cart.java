package com.kh.leteatvi.store.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart implements Serializable{

	private static final long serialVersionUID = 2L;
	
	private String userId;
	private int pid;
	private int cid;
	private int cartquantity;
	private String pname;
	private int pprice;
	private String pinfo;
	private String cname;
	
	public Cart(String userId, int pid) {
		this.userId = userId;
		this.pid = pid;
	}

	public Cart(String userId, int pid, int cartquantity) {
		this.userId = userId;
		this.pid = pid;
		this.cartquantity = cartquantity;
	}

}
