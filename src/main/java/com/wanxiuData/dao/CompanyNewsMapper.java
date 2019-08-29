package com.wanxiuData.dao;

import com.wanxiuData.entity.CompanyNews;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyNewsMapper {
    List<CompanyNews> findAll();
    List<CompanyNews> findById(@Param(value = "newsId") Integer newsId);
}
