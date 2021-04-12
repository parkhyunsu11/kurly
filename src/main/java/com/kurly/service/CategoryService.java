package com.kurly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.mapper.CategoryMapper;
import com.kurly.vo.ClassifyDataVO;

@Service
public class CategoryService {
	@Autowired
	CategoryMapper mapper;
	
	public List<ClassifyDataVO> selectCategories() {
		return mapper.selectCategories();
	}
}










