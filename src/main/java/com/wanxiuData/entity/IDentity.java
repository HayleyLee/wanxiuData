package com.wanxiuData.entity;

public class IDentity {
    private Integer OrderId;
    private Integer MerchantId;
    private Integer Count;

    public IDentity(){

    }

    public IDentity(Integer orderId, Integer merchantId, Integer count) {
        OrderId = orderId;
        MerchantId = merchantId;
        Count = count;
    }

    public Integer getOrderId() {
        return OrderId;
    }

    public void setOrderId(Integer orderId) {
        OrderId = orderId;
    }

    public Integer getMerchantId() {
        return MerchantId;
    }

    public void setMerchantId(Integer merchantId) {
        MerchantId = merchantId;
    }

    public Integer getCount() {
        return Count;
    }

    public void setCount(Integer count) {
        Count = count;
    }
}
