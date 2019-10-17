package com.wanxiuData.service.Impl;

import com.wanxiuData.dao.BigDataMapper;
import com.wanxiuData.dao.PbxMapper;
import com.wanxiuData.service.BigDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BigDataServiceImpl implements BigDataService {
    @Autowired
    private BigDataMapper bigDataMapper;
    @Autowired
    private PbxMapper pbxMapper;
    @Override
    public Integer findOldCount() {
        Integer oldCount = bigDataMapper.findOldCount();
        if(oldCount>0){
            return oldCount;
        }else {
            return 0;
        }
    }

    @Override
    public Integer CountAllService() {
        Integer countService = bigDataMapper.CountService();
        Integer outCall = pbxMapper.findOutCall();
        Integer inCall = pbxMapper.findInCall();
        Integer finale = countService+outCall+inCall;
        if(finale>0){
            return finale;
        }else {
            return 0;
        }
    }

    @Override
    public Integer CountService() {
        Integer countService = bigDataMapper.CountService();
        if(countService>0){
            return countService;
        }else {
            return 0;
        }
    }

    @Override
    public Integer PBXCountAll() {
        return pbxMapper.findInCall()+pbxMapper.findOutCall();
    }

    @Override
    public ArrayList<Integer> CountOrderEvaluate() {
        return bigDataMapper.CountOrderEvaluate();
    }
}
