package com.wanxiuData.service.Impl;

import com.wanxiuData.dao.CompanyNewsMapper;
import com.wanxiuData.entity.CompanyNews;
import com.wanxiuData.service.CompanyNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyNewsServiceImpl implements CompanyNewsService {
    @Autowired
    private CompanyNewsMapper companyNewsMapper;
    @Override
    public List<CompanyNews> findAll() {
        return companyNewsMapper.findAll();
    }

    @Override
    public List<CompanyNews> findById(Integer newsId) {
        if(newsId>0){
            return companyNewsMapper.findById(newsId);
        }else return null;
    }
}
