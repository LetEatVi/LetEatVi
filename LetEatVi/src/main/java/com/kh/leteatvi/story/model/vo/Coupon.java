package com.kh.leteatvi.story.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Coupon implements Serializable {
	
	private int coupon_Id;
	private String coupon_name;
	private int discount_rate;

	
}
