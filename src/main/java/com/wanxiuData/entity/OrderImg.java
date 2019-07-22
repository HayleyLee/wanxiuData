package com.wanxiuData.entity;

public class OrderImg {
    private Integer imagesId;
    private Integer orderId;
    private String imageName;
    private String imageNewName;
    private String imagesPath;
    private String pictureCategory;
    private String published;

    public OrderImg() {
    }

    public OrderImg(Integer imagesId, Integer orderId, String imageName, String imageNewName, String imagesPath, String pictureCategory, String published) {
        this.imagesId = imagesId;
        this.orderId = orderId;
        this.imageName = imageName;
        this.imageNewName = imageNewName;
        this.imagesPath = imagesPath;
        this.pictureCategory = pictureCategory;
        this.published = published;
    }

    public Integer getImagesId() {
        return imagesId;
    }

    public void setImagesId(Integer imagesId) {
        this.imagesId = imagesId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImageNewName() {
        return imageNewName;
    }

    public void setImageNewName(String imageNewName) {
        this.imageNewName = imageNewName;
    }

    public String getImagesPath() {
        return imagesPath;
    }

    public void setImagesPath(String imagesPath) {
        this.imagesPath = imagesPath;
    }

    public String getPictureCategory() {
        return pictureCategory;
    }

    public void setPictureCategory(String pictureCategory) {
        this.pictureCategory = pictureCategory;
    }

    public String getPublished() {
        return published;
    }

    public void setPublished(String published) {
        this.published = published;
    }
}
