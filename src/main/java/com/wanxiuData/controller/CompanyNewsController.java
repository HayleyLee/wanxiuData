package com.wanxiuData.controller;

import com.wanxiuData.entity.CompanyNews;
import com.wanxiuData.service.CompanyNewsService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/CompanyNews")
public class CompanyNewsController {
    @Autowired
    private CompanyNewsService companyNewsService;
    @ResponseBody
    @RequestMapping("/findAll")
    public JSONArray findAll(Integer pageNumber, Integer pageSize){
        List<CompanyNews> list = companyNewsService.findAll();
        JSONArray jarr = new JSONArray();
        for(CompanyNews a:list){
            JSONObject jo = new JSONObject();
            jo.put("newsTitle",a.getNewsTitle());
            jo.put("imgUrl",a.getImgUrl());
            if(a.getContents().length()>200){
                jo.put("contents",a.getContents().substring(0,200)+"...");
            }
            else {
                jo.put("contents",a.getContents());
            }
            jo.put("createTime",a.getCreateTime());
            jo.put("newsId",a.getNewsId());
            jarr.add(jo);
        }
        return jarr;
    }
    @ResponseBody
    @RequestMapping("/findById")
    public JSONArray findById(Integer newsId){
        List<CompanyNews> list = companyNewsService.findById(newsId);
        if(list!=null){
            JSONArray jarr = new JSONArray();
            for(CompanyNews a:list) {
                JSONObject jo = new JSONObject();
                jo.put("newsTitle", a.getNewsTitle());
                jo.put("imgUrl", a.getImgUrl());
                jo.put("contents", a.getContents());
                jo.put("createTime", a.getCreateTime());
                jo.put("newsId", a.getNewsId());
                jarr.add(jo);
            }
            return jarr;
        }else return null;
    }
}
