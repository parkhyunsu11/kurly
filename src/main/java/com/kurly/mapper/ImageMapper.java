package com.kurly.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImageMapper {
	public String selectRealImageName(String uri);
}
