package com.it.ssm.service;

import com.it.ssm.domain.Collection;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICollectionService {
    public int insertCollection(Collection collection);

    public List<Collection> getByID(int id);

    public Collection selectUserID(Collection collection);

    //模糊查询(多条件)
    public List<Collection> selectFuzzy(Integer userID, String keyWords,String type);

    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
