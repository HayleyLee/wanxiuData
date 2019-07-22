package com.wanxiuData.service;

import com.wanxiuData.entity.Commoditytype;
import com.wanxiuData.entity.Merchants;
import com.wanxiuData.entity.MerchantsLocation;
import com.wanxiuData.entity.Order;

import java.util.ArrayList;

public interface MerchantsService {
    Integer MerchantsCount();
    Integer NursingCount();
    Integer DoctorCount();
    Integer VolunteerCount();
    Integer SocialCount();
    Integer InstituteCount();
    ArrayList<MerchantsLocation> MerchantsLocation();
    Merchants findMerchantByMerchantId(Integer MerchantId);
    ArrayList<Commoditytype> CountServiceOption();
    ArrayList<Integer> CountMerchantsOption();
    ArrayList<Order> NewOrder();
}
