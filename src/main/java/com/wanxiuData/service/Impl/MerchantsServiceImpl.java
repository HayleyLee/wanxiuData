package com.wanxiuData.service.Impl;

import com.wanxiuData.dao.CommoditytypeMapper;
import com.wanxiuData.dao.MerchantsMapper;
import com.wanxiuData.entity.Commoditytype;
import com.wanxiuData.entity.Merchants;
import com.wanxiuData.entity.MerchantsLocation;
import com.wanxiuData.entity.Order;
import com.wanxiuData.service.MerchantsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class MerchantsServiceImpl implements MerchantsService {
    @Autowired
    private MerchantsMapper merchantsMapper;
    @Autowired
    private CommoditytypeMapper commoditytypeMapper;
    @Override
    public Integer MerchantsCount() {
        return merchantsMapper.MerchantsCount();
    }

    @Override
    public Integer NursingCount() {
        return merchantsMapper.NursingCount();
    }

    @Override
    public Integer DoctorCount() {
        return merchantsMapper.DoctorCount();
    }

    @Override
    public Integer VolunteerCount() {
        return merchantsMapper.VolunteerCount();
    }

    @Override
    public Integer SocialCount() {
        return merchantsMapper.SocialCount();
    }

    @Override
    public Integer InstituteCount() {
        return merchantsMapper.InstituteCount();
    }

    @Override
    public ArrayList<MerchantsLocation> MerchantsLocation() {
        ArrayList<MerchantsLocation> merchantList = merchantsMapper.findMerchantLocationInfo();
        for(int i=0;i<merchantList.size();i++){
            merchantList.get(i).setOrder(merchantsMapper.CountOrderByMerchantsID(merchantList.get(i).getMerchantId()));
        }
        return merchantList;
    }

    @Override
    public Merchants findMerchantByMerchantId(Integer MerchantId) {
        if(MerchantId>0){
            return merchantsMapper.findMerchantByMerchantID(MerchantId);
        }else {
            return null;
        }
    }

    @Override
    public ArrayList<Commoditytype> CountServiceOption() {
        return commoditytypeMapper.findAllCommoditytype();
    }

    @Override
    public ArrayList<Integer> CountMerchantsOption() {
        ArrayList<Integer> list = new ArrayList<Integer>();
        for(int i=0;i<9;i++){
            list.add(merchantsMapper.findMerchantByTypeId(i));
        }
        return list;
    }

    @Override
    public ArrayList<Order> NewOrder() {
        return merchantsMapper.NewOrder();
    }
}
