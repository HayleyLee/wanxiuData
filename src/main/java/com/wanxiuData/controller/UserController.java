package com.wanxiuData.controller;

import com.wanxiuData.entity.User;
import com.wanxiuData.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping("/Old")
public class UserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/findOldByAge")
    public ArrayList<Integer> findOldByAge(){
        HashMap<String, Integer> map = userService.findOldPeopleIDcardNumber();
        ArrayList<Integer> list = new ArrayList<Integer>();
        list.add(map.get("60-65"));
        list.add(map.get("66-70"));
        list.add(map.get("71-75"));
        list.add(map.get("76-80"));
        list.add(map.get("81-85"));
        list.add(map.get("86-90"));
        list.add(map.get("91-95"));
        list.add(map.get("96-100"));
        list.add(map.get("100+"));
        return list;
    }

    @ResponseBody
    @RequestMapping("/CountOldByLocation")
    public Integer CountOldByLocation(Integer location){
        return userService.countOldByLocation(location);
    }

    @ResponseBody
    @RequestMapping("/countDisability")
    public Integer countDisability(){
        return userService.countDisability();
    }

    @ResponseBody
    @RequestMapping("/CountAllOldByLocation")
    public ArrayList<Integer> CountAllOldByLocation(){
        return userService.CountAllOldByLocation();
    }

    @ResponseBody
    @RequestMapping("/CountAllDisability")
    public ArrayList<Integer> CountAllDisability(){
        return userService.CountAllDisability();
    }

    @ResponseBody
    @RequestMapping("/CountDisabilityByCountry")
    public ArrayList<Integer> CountDisabilityByCountry(){
        return userService.CountDisabilityByCountry();
    }

    @ResponseBody
    @RequestMapping("/CountGovernmentService")
    public ArrayList<Integer> CountGovernmentService(){
        return userService.CountGovernmentService();
    }

    @ResponseBody
    @RequestMapping("/Disease")
    public Integer[] Disease(){
        return userService.Disease();
    }

    @ResponseBody
    @RequestMapping("/Disability")
    public ArrayList<ArrayList<Integer>> Disability(){
        return userService.Disability();
    }

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request, String name, String password){
        User user = userService.login(name, password);
        if(user!=null){
            request.getSession().setAttribute("user",user);
            return new ModelAndView("redirect:/indexData.jsp");
        }else {
            return new ModelAndView("redirect:/404.jsp");
        }
    }
}
