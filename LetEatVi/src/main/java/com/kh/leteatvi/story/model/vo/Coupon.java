package com.kh.leteatvi.story.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Coupon implements Serializable {

	private static final long serialVersionUID = 150L;
	
	private int cid;
	private String cname;
	private int discountrate;
	
}
