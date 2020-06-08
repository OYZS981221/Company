package com.it.ssm.dao;

import com.it.ssm.domain.Company;
import com.it.ssm.domain.History;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IHistoryDao {
    public int insertHistory(History history);

    public List<History> getByID(int id);

    // 查询基本企业档案信息（通过ID）
    public History queryHistoryByID(int id);

    //模糊查询(多条件)
    public List<History> selectFuzzy(@Param("keyWords")String keyWords, @Param("type") String type,@Param("userID")int userID,
                                     @Param("beginTime")String beginTime, @Param("endTime")String endTime);

    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
