package com.wanxiuData.dao;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface BigDataMapper {
    Integer findOldCount();
    Integer CountService();
    ArrayList<Integer> CountOrderEvaluate();
}
