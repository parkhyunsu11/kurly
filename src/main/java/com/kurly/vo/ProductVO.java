package com.kurly.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private String mkp_name;
	private String mkp_sub_name;
	private Integer mkp_price;
	private Integer mkp_discount;
	private Integer mkp_discount_rate;
	private Integer mkp_kurly_only;
	private Integer mkp_point_rate;
	private String mkp_unit;
	private Integer mkp_weight;
	private Integer mkp_early_delivery;
	private Integer mkp_delivery;
	private String mkp_packing_type;
	private String mkp_allergy_info;
	private String mkp_exp_date;
	private String mkpi_uri;
	private String mkb_name;
	
	private String originPrice; 
	private String finalPrice;
	private String point;
	
	private Integer finalPriceInt;
	private Integer pointInt;
	
}
