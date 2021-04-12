package com.kurly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kurly.service.ProductService;
import com.kurly.vo.ProductVO;

@Controller
public class ShopController {
	@Autowired
	ProductService prodService;
	
	@GetMapping("/shop/detail")
	public String getShopDetail(@RequestParam Integer prod_seq, Model model) {
		
		ProductVO product = prodService.selectProductBySeq(prod_seq);
		
		model.addAttribute("product",product);
		
		return"/shop/detail";
	}
}
