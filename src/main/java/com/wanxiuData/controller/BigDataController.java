package com.wanxiuData.controller;

import com.wanxiuData.service.BigDataService;
import com.wanxiuData.service.PBXService;
import com.wanxiuData.service.ServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
@RequestMapping("/BigData")
public class BigDataController {
    @Autowired
    private BigDataService bigDataService;
    @Autowired
    private ServiceService serviceService;
    @Autowired
    private PBXService pbxService;

    @ResponseBody
    @RequestMapping("/findOld")
    public Integer CountOld(){
        return bigDataService.findOldCount();
    }
    @ResponseBody
    @RequestMapping("/findAllService")
    public Integer findAllService(){
        return bigDataService.CountAllService();
    }

    @ResponseBody
    @RequestMapping("/findService")
    public Integer CountService(){
        return bigDataService.CountService();
    }

    @ResponseBody
    @RequestMapping("/onlineService")
    public Integer PBXCountAll(){
        return bigDataService.PBXCountAll();
    }

    @ResponseBody
    @RequestMapping("/toDayService")
    public Integer toDayService(){
        return serviceService.findToDayOrder();
    }

    @ResponseBody
    @RequestMapping("/toDayCall")
    public Integer toDayCall(){
        return pbxService.findToDay();
    }

    @ResponseBody
    @RequestMapping("/CountOrderEvaluate")
    public ArrayList<Integer> CountOrderEvaluate(){
        return bigDataService.CountOrderEvaluate();
    }
}
