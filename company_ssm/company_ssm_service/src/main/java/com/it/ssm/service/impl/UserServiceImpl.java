package com.it.ssm.service.impl;

import com.it.ssm.dao.IUserDao;
import com.it.ssm.domain.User;
import com.it.ssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
    @Autowired
    public  IUserDao userDao;

    //用户验证（登录）
    @Override
    public User queryUser(String userName,String passWord) {
        return userDao.queryUser(userName,passWord);
    }

    //用户注册
    @Override
    public int regist(User user){
        return userDao.regist(user);
    }

//    注销用户
    @Override
    public int deleteUserByID(int id) {
        return userDao.deleteUserByID(id);
    }

//    查询用户
    @Override
    public User queryUserByID(int id) {
        return userDao.queryUserByID(id);
    }


    //    更新用户
    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public User selectUserByName(User user) {
        return userDao.selectUserByName(user);
    }

    @Override
    public List<User> queryUserByName(String userName) {
        return userDao.queryUserByName(userName);
    }


    @Override
    public List<User> selectAll() {
        return userDao.selectAll();
    }

    @Override
    public List<User> queryUserX(String keyWords,String sex) {
        return userDao.queryUserX(keyWords,sex);
    }

    @Override
    public void deleteList(Integer[] ids) {
        userDao.deleteList(ids);
    }


}
