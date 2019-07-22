package com.wanxiuData.dao;

import com.wanxiuData.entity.OldLocation;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;


@Repository
public interface LocationMapper {
    ArrayList<OldLocation> findAllOldLocation();
}
