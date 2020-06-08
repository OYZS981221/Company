package com.it.ssm.service;

import com.it.ssm.domain.History;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IHistoryService {
    public void insertHistory(History history);

    public List<History> getByID(int id);

    public History queryHistoryByID(int id);

    //模糊查询(多条件)
    public List<History> selectFuzzy(String keyWords, String type,int userID,
                                    String beginTime, String endTime);
    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
