package com.wanxiuData.controller;

import com.wanxiuData.service.PBXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/PBX")
public class PBXController {
    @Autowired
    private PBXService pbxService;

    @ResponseBody
    @RequestMapping("/findOutCall")
    public Integer findOutCall(){
        return pbxService.findOutCall();
    }

    @ResponseBody
    @RequestMapping("/findInCall")
    public Integer findInCall(){
        return pbxService.findInCall();
    }

    @ResponseBody
    @RequestMapping("/findOutCallToDay")
    public Integer findOutCallToDay(){
        return pbxService.findOutCallToDay();
    }

    @ResponseBody
    @RequestMapping("/findInCallToDay")
    public Integer findInCallToDay(){
        return pbxService.findInCallToDay();
    }

    @ResponseBody
    @RequestMapping("/Percentage")
    public String Percentage(){
        return pbxService.Percentage();
    }

    @ResponseBody
    @RequestMapping("/findByWorkID")
    public Integer[] findByWorkID(){
        return pbxService.findByWorkID();
    }

    @ResponseBody
    @RequestMapping("/findCallByWorkIDToDay")
    public Integer[] findCallByWorkIDToDay(){
        return pbxService.findCallByWorkIDToDay();
    }

    @ResponseBody
    @RequestMapping("/findToDayByHour")
    public Integer[] findToDayByHour(){
        return pbxService.findByToDayHour();
    }

    @ResponseBody
    @RequestMapping("/findAllByTime")
    public Object[] findAllByTime(){
        return pbxService.findAllByTime();
    }
}
