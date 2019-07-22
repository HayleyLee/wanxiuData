package com.wanxiuData.controller;

import com.wanxiuData.dao.ServiceMapper;
import com.wanxiuData.entity.Order;
import com.wanxiuData.entity.OrderImg;
import com.wanxiuData.service.ServiceService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Service")
public class ServiceController {
    @Autowired
    private ServiceService serviceService;
    @Autowired
    private ServiceMapper serviceMapper;

    @ResponseBody
    @RequestMapping(value = {"/CountTOP5Service"},produces={"text/plain;charset=UTF-8"})
    public String CountTOPService(){
        List<Map.Entry<Integer, Integer>> finalList = serviceService.CountTOPService();
        Integer[] count = new Integer[5];
        for(int i=0;i<finalList.size();i++){
            count[i]=finalList.get(i).getValue();
        }
        String[] name = new String[5];
        for(int i=0;i<finalList.size();i++){
            name[i]=serviceMapper.findMerchantByMerchantId(finalList.get(i).getKey());
        }
        String temp=name[0]+","+name[1]+","+name[2]+","+name[3]+","+name[4];
        String Temp=count[0]+","+count[1]+","+count[2]+","+count[3]+","+count[4];
        return temp+"+"+Temp;
    }

    @ResponseBody
    @RequestMapping("/ToDayServiceType")
    public JSONArray ServiceTypeCount(){
        return serviceService.ServiceTypeCount();
    }

    @ResponseBody
    @RequestMapping("/CountServiceByLocation")
    public List<Integer> CountServiceByLocation(){
        return serviceService.countServiceByLocation();
    }

    @ResponseBody
    @RequestMapping("/CountServiceType")
    public JSONArray CountServiceType(){
        return serviceService.CountServiceType();
    }

    @ResponseBody
    @RequestMapping("/findAllNursingLocation")
    public ArrayList<Integer> findAllNursingLocation(){
        return serviceService.findAllNursingLocation();
    }

    @ResponseBody
    @RequestMapping("/findOrderByUserId")
    public List<Order> findOrderByUserId(Integer userId){
        return serviceService.findOrderByUserId(userId);
    }

    @ResponseBody
    @RequestMapping("/findNursingHead")
    public String findNursingHead(Integer userId){
        return serviceService.findNursingHead(userId);
    }

    @ResponseBody
    @RequestMapping("/findOrderImg")
    public List<OrderImg> findOrderImg(Integer userId){
        return serviceService.findImgByOrder(userId);
    }

}
