package com.it.ssm.service;

import com.it.ssm.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserService {
    //用户验证（登录）
    public User queryUser(String userName,String passWord);

    //用户注册
    public int regist(User user);

    //    注销用户（通过ID）
    public int deleteUserByID(int id);

    //查询用户信息
    public User queryUserByID(int id);

    //更新用户
    public int updateUser(User user);

    //    查询用户信息（通过Name）
    public User selectUserByName(User user);

    //    查询用户信息（通过Name）
    public List<User> queryUserByName(String userName);

    //查询全部
    public List<User> selectAll();

    //模糊查询（通过公司名或地址）
    public List<User> queryUserX(String keyWords,String sex);

    //批量删除
    public void deleteList(Integer[] ids);

}
