package com.wanxiuData.entity;

public class Commoditytype {
    private Integer typeId;
    private String typeName;
    private Integer sid;

    public Commoditytype(Integer typeId, String typeName, Integer sid) {
        this.typeId = typeId;
        this.typeName = typeName;
        this.sid = sid;
    }

    public Commoditytype() {
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }
}
