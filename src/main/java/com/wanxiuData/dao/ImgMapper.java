package com.wanxiuData.dao;

import com.wanxiuData.entity.Img;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImgMapper {
    List<Img> findAllImg();
    List<Img> findImgByTypeId(@Param(value = "typeId") Integer typeId);
}
