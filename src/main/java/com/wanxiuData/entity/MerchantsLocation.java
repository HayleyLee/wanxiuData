package com.wanxiuData.entity;

public class MerchantsLocation {
    private Integer merchantId;  //商家ID
    private String longitude;  //经度
    private String latitude;   //纬度
    private Integer typeId;   //商家服务产品类别ID 跟商品类别表的sid关联
    private Integer merchantType;   //商家类型
    private Integer order;   //商家服务产品类别ID 跟商品类别表的sid关联

    public MerchantsLocation(Integer merchantId, String longitude, String latitude, Integer typeId, Integer merchantType, Integer order) {
        this.merchantId = merchantId;
        this.longitude = longitude;
        this.latitude = latitude;
        this.typeId = typeId;
        this.merchantType = merchantType;
        this.order = order;
    }

    @Override
    public String toString() {
        return "MerchantsLocation{" +
                "merchantId=" + merchantId +
                ", longitude='" + longitude + '\'' +
                ", latitude='" + latitude + '\'' +
                ", typeId=" + typeId +
                ", merchantType=" + merchantType +
                ", order=" + order +
                '}';
    }

    public MerchantsLocation() {
    }

    public Integer getMerchantType() {
        return merchantType;
    }

    public void setMerchantType(Integer merchantType) {
        this.merchantType = merchantType;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
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

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}
