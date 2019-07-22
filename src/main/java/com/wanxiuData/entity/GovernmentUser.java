package com.wanxiuData.entity;

public class GovernmentUser {
    private Integer normal;
    private Integer substitutes;
    private Integer dead;

    public GovernmentUser(Integer normal, Integer substitutes, Integer dead) {
        this.normal = normal;
        this.substitutes = substitutes;
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

    public Integer getSubstitutes() {
        return substitutes;
    }

    public void setSubstitutes(Integer substitutes) {
        this.substitutes = substitutes;
    }

    public Integer getDead() {
        return dead;
    }

    public void setDead(Integer dead) {
        this.dead = dead;
    }
}
