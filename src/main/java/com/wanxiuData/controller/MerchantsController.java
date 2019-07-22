package com.wanxiuData.controller;

import com.wanxiuData.entity.Commoditytype;
import com.wanxiuData.entity.Merchants;
import com.wanxiuData.entity.MerchantsLocation;
import com.wanxiuData.entity.Order;
import com.wanxiuData.service.MerchantsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
@RequestMapping("/Merchants")
public class MerchantsController {
    @Autowired
    private MerchantsService merchantsService;

    @ResponseBody
    @RequestMapping("/MerchantsCount")
    public Integer MerchantsCount(){
        return merchantsService.MerchantsCount();
    }

    @ResponseBody
    @RequestMapping("/NursingCount")
    public Integer NursingCount(){
        return merchantsService.NursingCount();
    }

    @ResponseBody
    @RequestMapping("/DoctorCount")
    public Integer DoctorCount(){
        return merchantsService.DoctorCount();
    }

    @ResponseBody
    @RequestMapping("/VolunteerCount")
    public Integer VolunteerCount(){
        return merchantsService.VolunteerCount();
    }

    @ResponseBody
    @RequestMapping("/SocialCount")
    public Integer SocialCount(){
        return merchantsService.SocialCount();
    }

    @ResponseBody
    @RequestMapping("/InstituteCount")
    public Integer InstituteCount(){
        return merchantsService.InstituteCount();
    }

    @ResponseBody
    @RequestMapping("/MerchantsLocation")
    public ArrayList<MerchantsLocation> MerchantsLocation(){
        return merchantsService.MerchantsLocation();
    }

    @ResponseBody
    @RequestMapping("/findMerchantByMerchantId")
    public Merchants findMerchantByMerchantId(Integer merchantId){
        return merchantsService.findMerchantByMerchantId(merchantId);
    }

    @ResponseBody
    @RequestMapping("/CountMerchantsOption")
    public ArrayList<Integer> CountMerchantsOption(){
        return merchantsService.CountMerchantsOption();
    }

    @ResponseBody
    @RequestMapping("/CountServiceOption")
    public ArrayList<Commoditytype> CountServiceOption(){
        return merchantsService.CountServiceOption();
    }

    @ResponseBody
    @RequestMapping("/NewOrder")
    public ArrayList<Order> NewOrder(){
        return merchantsService.NewOrder();
    }
}
