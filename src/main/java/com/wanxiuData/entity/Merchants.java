package com.wanxiuData.entity;

public class Merchants {
    private String merchantName;  //商家名
    private String responsiblePerson; //商家负责人姓名
    private String phone; //联系电话
    private String businessLicenseImage; //营业执照图片
    private String merchantsImages; //商家门店图片
    private String address; //地址
    private String introductionStores;//门店介绍

    public Merchants(String merchantName, String responsiblePerson, String phone, String businessLicenseImage, String merchantsImages, String address, String introductionStores) {
        this.merchantName = merchantName;
        this.responsiblePerson = responsiblePerson;
        this.phone = phone;
        this.businessLicenseImage = businessLicenseImage;
        this.merchantsImages = merchantsImages;
        this.address = address;
        this.introductionStores = introductionStores;
    }

    public Merchants() {
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName;
    }

    public String getResponsiblePerson() {
        return responsiblePerson;
    }

    public void setResponsiblePerson(String responsiblePerson) {
        this.responsiblePerson = responsiblePerson;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBusinessLicenseImage() {
        return businessLicenseImage;
    }

    public void setBusinessLicenseImage(String businessLicenseImage) {
        this.businessLicenseImage = businessLicenseImage;
    }

    public String getMerchantsImages() {
        return merchantsImages;
    }

    public void setMerchantsImages(String merchantsImages) {
        this.merchantsImages = merchantsImages;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroductionStores() {
        return introductionStores;
    }

    public void setIntroductionStores(String introductionStores) {
        this.introductionStores = introductionStores;
    }
}
