package com.wanxiuData.dao;

import com.wanxiuData.entity.ImgType;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ImgTypeMapper {
    ImgType findImgType(@Param(value = "typeId") Integer typeId);
}
