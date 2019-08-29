package com.wanxiuData.entity;

public class GovernmentUser {
    private Integer normal;
    private Integer dead;

    public GovernmentUser(Integer normal, Integer dead) {
        this.normal = normal;
        this.dead = dead;
    }

    public GovernmentUser() {
    }

    public Integer getNormal() {
        return normal;
    }

    public void setNormal(Integer normal) {
        this.normal = normal;
    }

    public Integer getDead() {
        return dead;
    }

    public void setDead(Integer dead) {
        this.dead = dead;
    }
}
