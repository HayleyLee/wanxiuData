package com.wanxiuData.entity;

import java.io.Serializable;

public class OldPeopleLocationInfo implements Serializable {
    private Integer oldId;
    private String equipmentId;
    private String cusname;
    private String sex;
    private String phone;
    private String residenceAddress;

    public OldPeopleLocationInfo(Integer oldId, String equipmentId, String cusname, String sex, String phone, String residenceAddress) {
        this.oldId = oldId;
        this.equipmentId = equipmentId;
        this.cusname = cusname;
        this.sex = sex;
        this.phone = phone;
        this.residenceAddress = residenceAddress;
    }

    public OldPeopleLocationInfo() {
    }

    public Integer getOldId() {
        return oldId;
    }

    public void setOldId(Integer oldId) {
        this.oldId = oldId;
    }

    public String getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(String equipmentId) {
        this.equipmentId = equipmentId;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getResidenceAddress() {
        return residenceAddress;
    }

    public void setResidenceAddress(String residenceAddress) {
        this.residenceAddress = residenceAddress;
    }
}
