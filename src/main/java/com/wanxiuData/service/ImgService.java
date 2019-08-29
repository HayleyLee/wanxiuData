package com.wanxiuData.service;

import com.wanxiuData.entity.Img;

import java.util.List;

public interface ImgService {
    List<Img> findAllImg();
    List<Img> findImgByTypeId(Integer typeId);
}
