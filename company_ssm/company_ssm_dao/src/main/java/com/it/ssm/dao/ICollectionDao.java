package com.it.ssm.dao;

import com.it.ssm.domain.Collection;
import com.it.ssm.domain.History;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICollectionDao {
    public int insertCollection(Collection collection);

    public List<Collection> getByID(int id);

    //模糊查询(多条件)
    public List<Collection> selectFuzzy(@Param("userID")Integer userID, @Param("keyWords")String keyWords, @Param("type") String type);

    public Collection selectUserID(Collection collection);

    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
