package com.it.ssm.dao;

import com.it.ssm.domain.Admin;
import org.apache.ibatis.annotations.Param;

public interface IAdminDao {
    //用户验证（登录）
    public Admin queryAdmin(@Param("userName") String userName, @Param("passWord") String passWord);

}
