package com.kurly.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kurly.vo.ClassifyDataVO;

@Mapper
public interface CategoryMapper {
	public List<ClassifyDataVO> selectCategories();
}














