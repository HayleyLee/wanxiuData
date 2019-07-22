package com.wanxiuData.entity;

public class ServerType {
    private String key;
    private Integer value;

    public ServerType(String key, Integer value) {
        this.key = key;
        this.value = value;
    }

    public ServerType() {
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }
}
