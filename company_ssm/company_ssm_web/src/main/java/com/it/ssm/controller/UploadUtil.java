package com.it.ssm.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@RequestMapping("/Save")
public class UploadUtil {

    @RequestMapping("/save.do")
    public static String uploadFile(MultipartFile img) throws IOException {
        //保存数据库的路径
        String sqlPath = null;
        //定义文件保存的本地路径
        String localPath = "E:\\IdeaProjects\\images\\";
        File fileUrl=new File(localPath);
        if (!fileUrl.exists()){
            fileUrl.mkdir();
        }
        //定义 文件名
        String filename = null;
        //生成uuid作为文件名称
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //获得文件类型（可以判断如果不是图片，禁止上传）
        String contentType = img.getContentType();
        //获得文件后缀名
        String suffixName = contentType.substring(contentType.indexOf("/") + 1);
        //得到 文件名
        filename = uuid + "." + suffixName;
        System.out.println(filename);
        //文件保存路径
        img.transferTo(new File(localPath + filename));
        sqlPath = "/image/" + filename;
        return sqlPath;
    }

}
