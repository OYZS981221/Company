package com.it.ssm.dao;

import com.it.ssm.domain.Log;
import org.apache.ibatis.annotations.Param;
import org.springframework.security.core.parameters.P;

import java.util.List;

public interface ILogDao {
    public int insertLog(Log log);

    public List<Log> selectLog(int userID);


    //模糊查询(多条件)
    public List<Log> selectFuzzy(@Param("beginTime")String beginTime, @Param("endTime")String endTime,
                                 @Param("userID")Integer userID);
    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
