package com.wanxiuData.service.Impl;

import com.wanxiuData.dao.ImgMapper;
import com.wanxiuData.entity.Img;
import com.wanxiuData.service.ImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImgServiceImpl implements ImgService {
    @Autowired
    private ImgMapper imgMapper;
    @Override
    public List<Img> findAllImg() {
        return imgMapper.findAllImg();
    }

    @Override
    public List<Img> findImgByTypeId(Integer typeId) {
        if(typeId>0){
            return imgMapper.findImgByTypeId(typeId);
        }
        return null;
    }
}
