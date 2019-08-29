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

    Integer CountGovernmentOrderByWanxiu(@Param(value = "AreaCode")String ArarCode,@Param(value = "merchantName")String merchantName);
    Integer CountGovernmentOrderByWanxiuNoMerchant(@Param(value = "AreaCode")String ArarCode);
    Integer CountGovernmentOrderByChangzhou(@Param(value = "AreaCode")String ArarCode,@Param(value = "merchantName")String merchantName);
    Integer CountGovernmentOrderByChangzhouNoMerchant(@Param(value = "AreaCode")String ArarCode);
    Integer CountGovernmentOrderByLongxu(@Param(value = "AreaCode")String ArarCode,@Param(value = "merchantName")String merchantName);
    Integer CountGovernmentOrderByLongxuNoMerchant(@Param(value = "AreaCode")String ArarCode);
}
