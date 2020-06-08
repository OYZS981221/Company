package com.it.ssm.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Arrays;
import java.util.Date;

public class News {
    private int id;
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private String author;
    private String type;
    private String popularity;
    private String indeximg;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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

    public String getPopularity() {
        return popularity;
    }

    public void setPopularity(String popularity) {
        this.popularity = popularity;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIndeximg() {
        return indeximg;
    }

    public void setIndeximg(String indeximg) {
        this.indeximg = indeximg;
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
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", time=" + time +
                ", author='" + author + '\'' +
                ", type='" + type + '\'' +
                ", popularity='" + popularity + '\'' +
                ", indeximg='" + indeximg + '\'' +
                ", otherimgF='" + otherimgF + '\'' +
                ", otherimgT='" + otherimgT + '\'' +
                ", otherimgS='" + otherimgS + '\'' +
                ", file=" + Arrays.toString(file) +
                '}';
    }
}
