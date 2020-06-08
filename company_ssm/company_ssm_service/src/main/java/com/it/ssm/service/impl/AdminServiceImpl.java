package com.it.ssm.service.impl;


import com.it.ssm.dao.IAdminDao;
import com.it.ssm.domain.Admin;
import com.it.ssm.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements IAdminService {
    @Autowired
    public IAdminDao adminDao;
    @Override
    public Admin queryAdmin(String userName, String passWord) {
        return adminDao.queryAdmin(userName,passWord);
    }
}
