package com.wanxiuData.entity;

public class CompanyNews {
    private Integer newsId;
    private String newsTitle;
    private String imgUrl;
    private String contents;
    private String createTime;
    private Integer state;

    public CompanyNews(Integer newsId, String newsTitle, String imgUrl, String contents, String createTime, Integer state) {
        this.newsId = newsId;
        this.newsTitle = newsTitle;
        this.imgUrl = imgUrl;
        this.contents = contents;
        this.createTime = createTime;
        this.state = state;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public CompanyNews() {
    }
}
