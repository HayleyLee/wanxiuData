package com.wanxiuData.entity;

public class NursingLocation {
    private Integer ulFlowId;
    private Integer userId;
    private String userName;
    private Integer updateState;
    private String longitude;
    private String latitude;
    private String province;
    private String city;
    private String county;
    private String town;
    private String village;
    private String address;
    private String gainTime;
    private Integer status;

    public NursingLocation(Integer ulFlowId, Integer userId, String userName, Integer updateState, String longitude, String latitude, String province, String city, String county, String town, String village, String address, String gainTime, Integer status) {
        this.ulFlowId = ulFlowId;
        this.userId = userId;
        this.userName = userName;
        this.updateState = updateState;
        this.longitude = longitude;
        this.latitude = latitude;
        this.province = province;
        this.city = city;
        this.county = county;
        this.town = town;
        this.village = village;
        this.address = address;
        this.gainTime = gainTime;
        this.status = status;
    }

    public NursingLocation() {
    }

    public Integer getUlFlowId() {
        return ulFlowId;
    }

    public void setUlFlowId(Integer ulFlowId) {
        this.ulFlowId = ulFlowId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getUpdateState() {
        return updateState;
    }

    public void setUpdateState(Integer updateState) {
        this.updateState = updateState;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGainTime() {
        return gainTime;
    }

    public void setGainTime(String gainTime) {
        this.gainTime = gainTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
