package com.it.ssm.service;

import com.it.ssm.domain.Admin;

public interface IAdminService {
    //用户验证（登录）
    public Admin queryAdmin(String userName, String passWord);
}
