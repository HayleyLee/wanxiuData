package com.wanxiuData.entity;

public class Order {
    //订单ID
    private Integer orderId;
    //护工ID
    private Integer nursingId;
    //注册表ID
    private Integer userId;
    //商家ID
    private Integer commodityId;
    //收货人姓名
    private String realName;
    //收货地址
    private String shippingAddress;
    //订单状态
    private Integer orderStatus;
    //商品名
    private String merchantName;
    //收货人联系方式
    private String consignee;
    //订单创建时间
    private String createdate;

    public Order() {
    }

    public Order(Integer orderId, Integer nursingId, Integer userId, Integer commodityId, String realName, String shippingAddress, Integer orderStatus, String merchantName, String consignee, String createdate) {
        this.orderId = orderId;
        this.nursingId = nursingId;
        this.userId = userId;
        this.commodityId = commodityId;
        this.realName = realName;
        this.shippingAddress = shippingAddress;
        this.orderStatus = orderStatus;
        this.merchantName = merchantName;
        this.consignee = consignee;
        this.createdate = createdate;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getNursingId() {
        return nursingId;
    }

    public void setNursingId(Integer nursingId) {
        this.nursingId = nursingId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Integer commodityId) {
        this.commodityId = commodityId;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }
}
