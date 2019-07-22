package com.wanxiuData.entity;

public class Area {
    private String chengzhongjiedao = "450403001%";
    private  String chengdongjiedao = "450403002%";
    private  String chengnanjiedao = "450403003%";
    private  String fuminjiedao = "450403004%";
    private  String jiaozuijiedao = "450403101%";
    private  String chengbeijiedao = "450403102%";
    private  String datangjiedao = "450425001%";
    private  String xinglongjiedao = "450425002%";
    private  String longxujiedao = "450424001%";
    private  String[] AreaArr= {"城中街道","城东街道","城南街道","富民街道","角嘴街道","城北街道","大塘街道","兴龙街道","龙圩街道"};
    private  String[] AreaCodeArr= {"450403001%","450403002%","450403003%","450403004%","450403101%","450403102%","450425001%","450425002%","450424001%"};

    public Area(String chengzhongjiedao, String chengdongjiedao, String chengnanjiedao, String fuminjiedao, String jiaozuijiedao, String chengbeijiedao, String datangjiedao, String xinglongjiedao, String longxujiedao, String[] areaArr, String[] areaCodeArr) {
        this.chengzhongjiedao = chengzhongjiedao;
        this.chengdongjiedao = chengdongjiedao;
        this.chengnanjiedao = chengnanjiedao;
        this.fuminjiedao = fuminjiedao;
        this.jiaozuijiedao = jiaozuijiedao;
        this.chengbeijiedao = chengbeijiedao;
        this.datangjiedao = datangjiedao;
        this.xinglongjiedao = xinglongjiedao;
        this.longxujiedao = longxujiedao;
        AreaArr = areaArr;
        AreaCodeArr = areaCodeArr;
    }

    public Area() {
    }

    public String getChengzhongjiedao() {
        return chengzhongjiedao;
    }

    public void setChengzhongjiedao(String chengzhongjiedao) {
        this.chengzhongjiedao = chengzhongjiedao;
    }

    public String getChengdongjiedao() {
        return chengdongjiedao;
    }

    public void setChengdongjiedao(String chengdongjiedao) {
        this.chengdongjiedao = chengdongjiedao;
    }

    public String getChengnanjiedao() {
        return chengnanjiedao;
    }

    public void setChengnanjiedao(String chengnanjiedao) {
        this.chengnanjiedao = chengnanjiedao;
    }

    public String getFuminjiedao() {
        return fuminjiedao;
    }

    public void setFuminjiedao(String fuminjiedao) {
        this.fuminjiedao = fuminjiedao;
    }

    public String getJiaozuijiedao() {
        return jiaozuijiedao;
    }

    public void setJiaozuijiedao(String jiaozuijiedao) {
        this.jiaozuijiedao = jiaozuijiedao;
    }

    public String getChengbeijiedao() {
        return chengbeijiedao;
    }

    public void setChengbeijiedao(String chengbeijiedao) {
        this.chengbeijiedao = chengbeijiedao;
    }

    public String getDatangjiedao() {
        return datangjiedao;
    }

    public void setDatangjiedao(String datangjiedao) {
        this.datangjiedao = datangjiedao;
    }

    public String getXinglongjiedao() {
        return xinglongjiedao;
    }

    public void setXinglongjiedao(String xinglongjiedao) {
        this.xinglongjiedao = xinglongjiedao;
    }

    public String getLongxujiedao() {
        return longxujiedao;
    }

    public void setLongxujiedao(String longxujiedao) {
        this.longxujiedao = longxujiedao;
    }

    public String[] getAreaArr() {
        return AreaArr;
    }

    public void setAreaArr(String[] areaArr) {
        AreaArr = areaArr;
    }

    public String[] getAreaCodeArr() {
        return AreaCodeArr;
    }

    public void setAreaCodeArr(String[] areaCodeArr) {
        AreaCodeArr = areaCodeArr;
    }
}
