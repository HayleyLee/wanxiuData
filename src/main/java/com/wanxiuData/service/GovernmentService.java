package com.wanxiuData.service;

import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.entity.GovernmentUser;
import com.wanxiuData.entity.ServerType;

import java.util.ArrayList;
import java.util.List;

public interface GovernmentService {
    Integer AllPeopleCount();
    Integer AllOrderCount();
    Integer CountAllPhoneUser();
    Integer CountAllRingUser();
    Integer CountSumHomeUser();
    Integer CountSumHomeOrder();
    ArrayList<Integer> CountSumHomeUserByLocation();
    List<ServerType> CountSumHomeOrderByMerchants();
    List<GovernmentUser> CountGovernmentUser();
    List<GovernmentOrder> CountGovernmentOrderByLocationAndMerchantName();
    List<Object[]> OrderAnalysis();
}
