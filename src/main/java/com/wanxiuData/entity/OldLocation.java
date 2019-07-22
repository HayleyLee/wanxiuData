package com.wanxiuData.entity;

import java.io.Serializable;

public class OldLocation implements Serializable {
    private Integer id;
    private String cusname;
    private String imei;
    private String imsi;
    private Integer normal;
    private String loginno;
    private String latitude;
    private String longitude;
    private Integer type;
    private Integer model;
    private String createtime;
    private String address;

    public OldLocation(Integer id, String cusname, String imei, String imsi, Integer normal, String loginno, String latitude, String longitude, Integer type, Integer model, String createtime, String address) {
        this.id = id;
        this.cusname = cusname;
        this.imei = imei;
        this.imsi = imsi;
        this.normal = normal;
        this.loginno = loginno;
        this.latitude = latitude;
        this.longitude = longitude;
        this.type = type;
        this.model = model;
        this.createtime = createtime;
        this.address = address;
    }

    public OldLocation() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    public String getImsi() {
        return imsi;
    }

    public void setImsi(String imsi) {
        this.imsi = imsi;
    }

    public Integer getNormal() {
        return normal;
    }

    public void setNormal(Integer normal) {
        this.normal = normal;
    }

    public String getLoginno() {
        return loginno;
    }

    public void setLoginno(String loginno) {
        this.loginno = loginno;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getModel() {
        return model;
    }

    public void setModel(Integer model) {
        this.model = model;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
