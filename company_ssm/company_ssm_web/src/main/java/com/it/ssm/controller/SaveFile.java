package com.it.ssm.controller;

import com.it.ssm.utils.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

@Controller
@RequestMapping("/Save")
public class SaveFile {
    /**
     * 保存文件file/image
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "save.do",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public JsonResult<String> saveFile(HttpServletRequest request) throws Exception{

//        //获取项目根路径(web.xml中需先设置才能使用这个获取项目路径)
//        String rootpath=System.getProperty("/images");
//
//        MultipartHttpServletRequest req= (MultipartHttpServletRequest) request;
//        MultipartFile multipartFile=req.getFile("file");
//
//        //保存路径
//        String realPath=rootpath+"../upload/images";
//
//        //获取上传的源文件名
//        String filename = multipartFile.getOriginalFilename();
//
//        //文件类型(.xxxx)
//        String contentType=filename.substring(filename.lastIndexOf("."));
//
//        try{
//            //判断文件夹是否存在
//            File dir=new File(realPath);
//            // 不存在则创建
//            if(!dir.exists()){
//                dir.mkdirs();
//            }
//            //保存图片
//            File file = new File(realPath, filename);
//            //写出文件
//            multipartFile.transferTo(file);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//        return "success";
        //保存数据库的路径

        MultipartHttpServletRequest req= (MultipartHttpServletRequest) request;
        MultipartFile multipartFile=req.getFile("file");
//        //获取上传的源文件名
//        String filename = multipartFile.getOriginalFilename();
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
        String contentType = multipartFile.getContentType();
        //获得文件后缀名
        String suffixName = contentType.substring(contentType.indexOf("/") + 1);
        //得到 文件名
        filename = uuid + "." + suffixName;
        System.out.println(filename);
        //文件保存路径
        multipartFile.transferTo(new File(localPath + filename));
        sqlPath = "/image/" + filename;
        return new JsonResult<>(200, sqlPath, null);
    }
}

