package com.it.ssm.domain;


import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

public class Company implements Serializable {
    private int id;
    private String companyID;
    private String name;
    private String boss;
    private String assets;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private String type;
    private String introduction;
    private String phoneNumber;
    private String email;
    private String province;
    private String city;
    private String district;
    private String address;
    private String action;
    private String popularity;
    private String internet;
    private String indeximg;
    private String addressimg;
    private String otherimgF;
    private String otherimgT;
    private String otherimgS;
    private String[] file;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyID() {
        return companyID;
    }

    public void setCompanyID(String companyID) {
        this.companyID = companyID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBoss() {
        return boss;
    }

    public void setBoss(String boss) {
        this.boss = boss;
    }

    public String getAssets() {
        return assets;
    }

    public void setAssets(String assets) {
        this.assets = assets;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getPopularity() {
        return popularity;
    }

    public void setPopularity(String popularity) {
        this.popularity = popularity;
    }

    public String getInternet() {
        return internet;
    }

    public void setInternet(String internet) {
        this.internet = internet;
    }

    public String getIndeximg() {
        return indeximg;
    }

    public void setIndeximg(String indeximg) {
        this.indeximg = indeximg;
    }

    public String getAddressimg() {
        return addressimg;
    }

    public void setAddressimg(String addressimg) {
        this.addressimg = addressimg;
    }

    public String getOtherimgF() {
        return otherimgF;
    }

    public void setOtherimgF(String otherimgF) {
        this.otherimgF = otherimgF;
    }

    public String getOtherimgT() {
        return otherimgT;
    }

    public void setOtherimgT(String otherimgT) {
        this.otherimgT = otherimgT;
    }

    public String getOtherimgS() {
        return otherimgS;
    }

    public void setOtherimgS(String otherimgS) {
        this.otherimgS = otherimgS;
    }

    public String[] getFile() {
        return file;
    }

    public void setFile(String[] file) {
        this.file = file;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", companyID='" + companyID + '\'' +
                ", name='" + name + '\'' +
                ", boss='" + boss + '\'' +
                ", assets='" + assets + '\'' +
                ", time=" + time +
                ", type='" + type + '\'' +
                ", introduction='" + introduction + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", address='" + address + '\'' +
                ", action='" + action + '\'' +
                ", popularity='" + popularity + '\'' +
                ", internet='" + internet + '\'' +
                ", indeximg='" + indeximg + '\'' +
                ", addressimg='" + addressimg + '\'' +
                ", otherimgF='" + otherimgF + '\'' +
                ", otherimgT='" + otherimgT + '\'' +
                ", otherimgS='" + otherimgS + '\'' +
                ", file=" + Arrays.toString(file) +
                '}';
    }
}
