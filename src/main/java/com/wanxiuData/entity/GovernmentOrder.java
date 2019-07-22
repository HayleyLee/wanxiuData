package com.wanxiuData.entity;

import java.io.Serializable;

public class GovernmentOrder implements Serializable {
    private Integer recovery;
    private Integer life;
    private Integer other;

    public GovernmentOrder(Integer recovery, Integer life, Integer other) {
        this.recovery = recovery;
        this.life = life;
        this.other = other;
    }

    public GovernmentOrder() {
    }

    public Integer getRecovery() {
        return recovery;
    }

    public void setRecovery(Integer recovery) {
        this.recovery = recovery;
    }

    public Integer getLife() {
        return life;
    }

    public void setLife(Integer life) {
        this.life = life;
    }

    public Integer getOther() {
        return other;
    }

    public void setOther(Integer other) {
        this.other = other;
    }
}
