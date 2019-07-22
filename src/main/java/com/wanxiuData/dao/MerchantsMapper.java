package com.wanxiuData.dao;

import com.wanxiuData.entity.Merchants;
import com.wanxiuData.entity.MerchantsLocation;
import com.wanxiuData.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface MerchantsMapper {
    Integer MerchantsCount();
    Integer NursingCount();
    Integer DoctorCount();
    Integer VolunteerCount();
    Integer SocialCount();
    Integer InstituteCount();
    Integer CountOrderByMerchantsID(@Param(value = "merchantsID")Integer merchantsID);
    ArrayList<MerchantsLocation> findMerchantLocationInfo();
    Merchants findMerchantByMerchantID(@Param(value = "merchantID")Integer merchantID);
    Integer findMerchantByTypeId(@Param(value = "typeId")Integer typeId);
    ArrayList<Order> NewOrder();
}
