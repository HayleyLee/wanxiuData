package com.wanxiuData.service.Impl;

import com.wanxiuData.dao.ImgTypeMapper;
import com.wanxiuData.entity.ImgType;
import com.wanxiuData.service.ImgTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImgTypeServiceImpl implements ImgTypeService {
    @Autowired
    private ImgTypeMapper imgTypeMapper;
    @Override
    public ImgType findImgType(Integer typeId) {
        if(typeId>0){
            return imgTypeMapper.findImgType(typeId);
        }
        return null;
    }
}
