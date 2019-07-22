package com.wanxiuData.controller;

import com.wanxiuData.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Location")
public class LocationController {
    @Autowired
    private LocationService locationService;
    @ResponseBody
    @RequestMapping("/findAllOldLocation")
    public Object[] findAllOldLocation(){
        return locationService.findAllOldLocation();
    }
}
