package com.cinema.cm.domain;

import java.io.Serializable;
import java.util.Objects;

/**
 * (Discount)实体类
 *
 * @author makejava
 * @since 2024-03-30 23:20:01
 */
public class Discount implements Serializable {
    private static final long serialVersionUID = -17408415219094805L;

    private Integer disId;

    private String disName;

    private Double disOff;

    private Integer disState;

    public Discount() {
    }

    public Discount(Integer disId, String disName, Double disOff, Integer disState) {
        this.disId = disId;
        this.disName = disName;
        this.disOff = disOff;
        this.disState = disState;
    }

    public Integer getDisId() {
        return disId;
    }

    public void setDisId(Integer disId) {
        this.disId = disId;
    }

    public String getDisName() {
        return disName;
    }

    public void setDisName(String disName) {
        this.disName = disName;
    }

    public Double getDisOff() {
        return disOff;
    }

    public void setDisOff(Double disOff) {
        this.disOff = disOff;
    }

    public Integer getDisState() {
        return disState;
    }

    public void setDisState(Integer disState) {
        this.disState = disState;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "disId=" + disId +
                ", disName=" + disName +
                ", disOff=" + disOff +
                ", disState=" + disState +
                "}";
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Discount other = (Discount) that;
        return (this.getDisId() == null ? other.getDisId() == null : this.getDisId().equals(other.getDisId()))
                && (this.getDisName() == null ? other.getDisName() == null : this.getDisName().equals(other.getDisName()))
                && (this.getDisOff() == null ? other.getDisOff() == null : this.getDisOff().equals(other.getDisOff()))
                && (this.getDisState() == null ? other.getDisState() == null : this.getDisState().equals(other.getDisState()));
    }

    @Override
    public int hashCode() {
        return Objects.hash(disId, disName, disOff, disState);
    }
}



