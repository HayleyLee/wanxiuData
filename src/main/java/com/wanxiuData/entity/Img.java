package com.wanxiuData.entity;

public class Img {
    private Integer id;
    private String imgName;
    private Integer state;
    private Integer typeId;

    public Img(Integer id, String imgName, Integer state, Integer typeId) {
        this.id = id;
        this.imgName = imgName;
        this.state = state;
        this.typeId = typeId;
    }

    public Img() {
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgName() {
        return imgName;
    }

    public void setImgName(String imgName) {
        this.imgName = imgName;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
