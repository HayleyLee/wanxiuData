package com.wanxiuData.controller;

import com.wanxiuData.entity.GovernmentOrder;
import com.wanxiuData.entity.GovernmentUser;
import com.wanxiuData.entity.ServerType;
import com.wanxiuData.service.GovernmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/Government")
public class GovernmentController {
    @Autowired
    private GovernmentService governmentService;

    @ResponseBody
    @RequestMapping("/AllPeopleCount")
    public Integer AllPeopleCount(){
        return governmentService.AllPeopleCount();
    }

    @ResponseBody
    @RequestMapping("/AllOrderCount")
    public Integer AllOrderCount(){
        return governmentService.AllOrderCount();
    }

    @ResponseBody
    @RequestMapping("/CountAllPhoneUser")
    public Integer CountAllPhoneUser(){
        return governmentService.CountAllPhoneUser();
    }

    @ResponseBody
    @RequestMapping("/CountAllRingUser")
    public Integer CountAllRingUser(){
        return governmentService.CountAllRingUser();
    }

    @ResponseBody
    @RequestMapping("/CountSumHomeUser")
    public Integer CountSumHomeUser(){
        return governmentService.CountSumHomeUser();
    }

    @ResponseBody
    @RequestMapping("/CountSumHomeOrder")
    public Integer CountSumHomeOrder(){
        return governmentService.CountSumHomeOrder();
    }

    @ResponseBody
    @RequestMapping("/CountSumHomeUserByLocation")
    public ArrayList<Integer> CountSumHomeUserByLocation(){
        return governmentService.CountSumHomeUserByLocation();
    }

    @ResponseBody
    @RequestMapping("/CountSumHomeOrderByMerchants")
    public List<ServerType> CountSumHomeOrderByMerchants(){
        return governmentService.CountSumHomeOrderByMerchants();
    }

    @ResponseBody
    @RequestMapping("/CountGovernmentUser")
    public List<GovernmentUser> CountGovernmentUser(){
        return governmentService.CountGovernmentUser();
    }

    @ResponseBody
    @RequestMapping("/CountGovernmentOrderByLocationAndMerchantName")
    public List<GovernmentOrder> CountGovernmentOrderByLocationAndMerchantName(){
        return governmentService.CountGovernmentOrderByLocationAndMerchantName();
    }

    @ResponseBody
    @RequestMapping("/OrderAnalysis")
    public List<Object[]> OrderAnalysis(){
        return governmentService.OrderAnalysis();
    }
}