package com.kurly.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private Integer mkm_seq;
	private String mkm_id;
	private String mkm_name;
	private String mkm_pwd;
	private String mkm_email;
	private String mkm_phone;
	private String mkm_address;
	private Integer mkm_gen;
	private Date mkm_birth;
	private Integer mkm_terms;
	private Integer mkm_collect_agree_mk;
	private Integer mkm_collect_agree_other;
	private Integer mkm_info_receive;
	private Integer mkm_info_receive_type;
	private Integer mkm_age_confirm;
	private Integer mkm_status;
	private Integer mkm_gride;
	private Integer mkm_type;
}


