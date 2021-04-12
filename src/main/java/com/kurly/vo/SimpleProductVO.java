package com.kurly.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SimpleProductVO {
	private Integer mkp_seq;
	private String mkp_name;
	private String mkp_sub_name;
	private Integer mkp_price;
	private Integer mkp_discount; // 할인여부
	private Integer mkp_discount_rate; // 할인률
	private Integer mkp_kurly_only; // 마켓컬리 독점 상품 여부
	private String mkpi_uri; // 이미지 경로
	private String mkb_name; // 브랜드(업체) 이름
	
	
	private String discounted;
	private String originPrice;
}








