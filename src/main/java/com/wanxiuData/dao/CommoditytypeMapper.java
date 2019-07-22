package com.wanxiuData.dao;

import com.wanxiuData.entity.Commoditytype;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CommoditytypeMapper {
    ArrayList<Commoditytype> findAllCommoditytype();
}
