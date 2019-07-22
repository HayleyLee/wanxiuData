package com.wanxiuData.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GovernmentMapper {
    Integer AllPeopleCount();
    Integer AllOrderCount();
    Integer CountAllPhoneUser();
    Integer CountAllRingUser();
    Integer CountSumHomeUser();
    Integer CountSumHomeOrder();
    Integer CountSumHomeUserByLocation(@Param(value = "location")Integer location);
    Integer CountSumHomeOrderByMerchants(@Param(value = "merchants")String merchants);
    Integer CountSumHomeOrderByNoMerchants();
    Integer CountNormalGovernmentUser(@Param(value = "clientType")Integer clientType, @Param(value = "areaCode")String areaCode);
    Integer CountNormalGovernmentChangzhouUser(@Param(value = "areaCode")String areaCode);
    Integer CountNoNormalGovernmentUser(@Param(value = "clientType")Integer clientType);
    Integer CountGovernmentOrderByLocationAndMerchantName(@Param(value = "location")String location,@Param(value = "merchantName")String merchantName);
    Integer CountGovernmentOrderByLocation(@Param(value = "location")String location);
    Integer OrderAnalysis(@Param(value = "locationCode") String locationCode,@Param(value = "time")String time,@Param(value = "merchantName")String merchantName);
    Integer OtherOrderAnalysis(@Param(value = "locationCode") String locationCode,@Param(value = "time")String time);
}
