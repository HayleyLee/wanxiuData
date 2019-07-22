package com.wanxiuData.entity;

public class User {
    private Integer adminId;
    private String loginName;
    private String loginPassword;
    private String realName;
    private String power;
    private Integer level;
    private String createTime;
    private String email;
    private String area;
    private Integer status;
    private String extension;
    private Long areaCode;

    public User() {
    }

    public User(Integer adminId, String loginName, String loginPassword, String realName, String power, Integer level, String createTime, String email, String area, Integer status, String extension, Long areaCode) {
        this.adminId = adminId;
        this.loginName = loginName;
        this.loginPassword = loginPassword;
        this.realName = realName;
        this.power = power;
        this.level = level;
        this.createTime = createTime;
        this.email = email;
        this.area = area;
        this.status = status;
        this.extension = extension;
        this.areaCode = areaCode;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public Long getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(Long areaCode) {
        this.areaCode = areaCode;
    }
}
