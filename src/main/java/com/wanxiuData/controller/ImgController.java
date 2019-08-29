package com.wanxiuData.controller;

import com.wanxiuData.entity.Img;
import com.wanxiuData.entity.ImgType;
import com.wanxiuData.service.ImgService;
import com.wanxiuData.service.ImgTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/Img")
public class ImgController {
    @Autowired
    private ImgService imgService;
    @Autowired
    private ImgTypeService imgTypeService;
    @ResponseBody
    @RequestMapping("/findAllImg")
    public List<Img> findAllImg(){
        return imgService.findAllImg();
    }

    @ResponseBody
    @RequestMapping("/findImgByTypeId")
    public List<Img> findImgByTypeId(Integer typeId){
        return imgService.findImgByTypeId(typeId);
    }

    @ResponseBody
    @RequestMapping("/findImgType")
    public ImgType findImgType(Integer typeId){
        return imgTypeService.findImgType(typeId);
    }
}
