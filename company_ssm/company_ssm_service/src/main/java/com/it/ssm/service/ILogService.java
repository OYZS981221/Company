package com.it.ssm.service;

import com.it.ssm.domain.Log;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ILogService {
    public int insertLog(Log log);

    public List<Log> selectLog(int userID);
    //模糊查询(多条件)
    public List<Log> selectFuzzy(String beginTime,String endTime,Integer userID);
    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
