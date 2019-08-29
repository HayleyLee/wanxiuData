package com.wanxiuData.service;

import com.wanxiuData.entity.CompanyNews;

import java.util.List;

public interface CompanyNewsService {
    List<CompanyNews> findAll();
    List<CompanyNews> findById(Integer newsId);
}
