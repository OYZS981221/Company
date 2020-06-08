package com.it.ssm.controller;

import com.it.ssm.domain.Admin;
import com.it.ssm.domain.Company;
import com.it.ssm.domain.News;
import com.it.ssm.domain.User;
import com.it.ssm.service.IAdminService;
import com.it.ssm.service.ICompanyService;
import com.it.ssm.service.INewsService;
import com.it.ssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Admin")
public class AdminController {
    @Autowired
    private IAdminService adminService;
    @Autowired
    private ICompanyService companyService;
    @Autowired
    private INewsService newsService;
    @Autowired
    private IUserService userService;

    //登录方法
    @RequestMapping(value = "/login.do")
    @ResponseBody
    public Admin login(@RequestBody Admin admin,HttpSession session) {
        String name = admin.getUserName();
        String password = admin.getPassWord();
        Admin adminInfo = adminService.queryAdmin(name,password);
        session.setAttribute("user",adminInfo);
        return adminInfo;
    }
    @RequestMapping(value = "/loginPage.do")
    public String redirect() {
        return "user/login";
    }

    //退出登录方法
    @RequestMapping("/outLogin.do")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "user/login";
    }

    //管理员删除用户
    @ResponseBody
    @RequestMapping(value = "/delete.do")
    public User deleteUser(@RequestBody User user) {
        userService.deleteUserByID(user.getId());
        User user1 = userService.queryUserByID(user.getId());
        return user1;
    }

    //将用户信息发送到修改也页面
    @RequestMapping(value = "/user.do")
    public String editUser(@RequestParam("id")int id,Model model) {
        User user1 = userService.queryUserByID(id);
        model.addAttribute("user",user1);
        return "user/user-edit";
    }


    //管理员修改用户信息方法
    @ResponseBody
    @RequestMapping(value = "/editor.do")
    public String updateUser(@RequestBody User user) {
        int count = userService.updateUser(user);
        String count1 = String.valueOf(count);
        if (count > 0){
            return count1;
        }else {
            return null;
        }
    }

    //跳转管理员页面
    @RequestMapping(value = "/adminJsp.do")
    public String adminJsp() {
        return "admin/index";
    }
    //跳转welcome页面
    @RequestMapping(value = "/welcomeJsp.do")
    public String welcomeJsp() {
        return "admin/welcome";
    }
    //处理JSP页面日期传值问题
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
}
