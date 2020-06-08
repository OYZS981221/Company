package com.it.ssm.controller;



import com.it.ssm.domain.Collection;
import com.it.ssm.domain.Log;
import com.it.ssm.domain.User;
import com.it.ssm.service.*;
import com.it.ssm.utils.AddressUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/User")
public class UserController {

    @Autowired
    private IUserService userService;
    @Autowired
    private ICompanyService companyService;
    @Autowired
    private INewsService newsService;
    @Autowired
    private ILogService logService;
    @Autowired
    private ICollectionService collectionService;

    //登录方法
    @ResponseBody
    @RequestMapping(value = "/login.do")
    public User login(@RequestBody User user, HttpSession session) throws Exception {
        String name = user.getUserName();
        String password = user.getPassWord();
        User userInfo = userService.queryUser(name, password);
        System.out.println(userInfo);
        if (userInfo != null){
            String macIp = InetAddress.getLocalHost().getHostAddress();
            System.out.println(macIp);
            int id = userInfo.getId();
            System.out.println(id);
            Log log = new Log();
            log.setUserid(id);
            log.setTime(new Date());
            System.out.println(new Date());
            String ip = InetAddress.getLocalHost().getHostAddress();
            log.setIp(ip);
//            String ip1 = "171.108.233.157";
//            String address = AddressUtils.Address(ip1);
            logService.insertLog(log);
        }

        session.setAttribute("user", userInfo);
        return userInfo;
    }

    //注册方法
    @ResponseBody
    @RequestMapping("/regist.do")
    public int doRegist(@RequestBody User user) {
        String userName = user.getUserName();
        int insert;
        try {
            insert = userService.regist(user);
        } catch (Exception e) {
            insert = -1;
        } finally {

        }
        return insert;
    }

    //注销方法
    @RequestMapping("/outLogin.do")
    public String outLogin(HttpSession session) {
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "user/login";
    }


    //查询个人信息方法
    @RequestMapping(value = "/user.do")
    public String doUser(@RequestParam("id") int id, Model model) {
        User user = userService.queryUserByID(id);
        model.addAttribute("user", user);
        return "user/userInformation";
    }

    //查询全部
    @RequestMapping(value = "/userList.do")
    public String selectAll(Model model) {
        List<User> user = userService.selectAll();
        model.addAttribute("user", user);
        return "user/user-list";
    }

    @RequestMapping(value = "/userSelect.do")
    public String userSelect(@RequestParam("id") int id, Model model) {
        User userInfo = userService.queryUserByID(id);
        model.addAttribute("user", userInfo);
        return "user/user-edit";
    }

    @ResponseBody
    @RequestMapping(value = "/test.do")
    public User userTest(@RequestBody User user) {
        User userInfo = userService.selectUserByName(user);
        return userInfo;
    }


    //通过用户名查询
    @RequestMapping(value = "searchByName.do")
    public String doSearch2(@Param("userName")String userName,Model model) {
        try {
            List<User> user = userService.queryUserByName(userName);
            model.addAttribute("user", user);
        } catch (Exception e) {
            System.out.println("输入非法！");
            throw e;
        }finally {
            return "user/user-list";
        }
    }
    //模糊查询（通过用户名、性别、电话号码、邮箱）
    @RequestMapping(value = "searchFuzzy.do")
    public String doSearch3(@Param("keyWords")String keyWords,@Param("sex")String sex, Model model) {
        List<User> user = userService.queryUserX(keyWords,sex);
        model.addAttribute("user", user);
        return "user/user-list";
    }



    //修改个人信息方法
    @RequestMapping(value = "/editor.do", method = RequestMethod.POST)
    public String updateUser(User user) {
        userService.updateUser(user);
        return "user/userInformation";
    }

    //用户注销账号
    @RequestMapping(value = "/delete.do")
    public String deleteUser(@RequestParam("id") int id) {
        userService.deleteUserByID(id);
        return "user/login";
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @RequestMapping(value = "deleteByIds.do")
    @ResponseBody
    public String deleteByIds(Integer[] ids) {
        try {
            //批量删除
            userService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }


    //跳转登录页面方法
    @RequestMapping(value = "/loginPage.do")
    public String redirect() {
        return "user/login";
    }


    //跳转管理员页面
    @RequestMapping(value = "/userJsp.do")
    public String adminJsp() {
        return "user/index";
    }


    //跳转用户增加页面
    @RequestMapping(value = "/addJsp.do")
    public String addUserJsp() {
        return "user/user-add";
    }

    //处理JSP页面日期传值问题
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }



    }



