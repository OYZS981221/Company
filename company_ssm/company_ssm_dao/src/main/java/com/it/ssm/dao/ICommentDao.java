package com.it.ssm.dao;

import com.it.ssm.domain.Collection;
import com.it.ssm.domain.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICommentDao {
    public int insertComment(Comment comment);

    public List<Comment> getByID(int id);

    //模糊查询(多条件)
    public List<Comment> selectFuzzy(@Param("keyWords")String keyWords, @Param("beginTime")String beginTime,
                                     @Param("endTime")String endTime, @Param("userName")String userName,
                                     @Param("companyName")String companyName
                                    );
    //模糊查询(多条件)
    public List<Comment> selectFuzzyU(@Param("keyWords")String keyWords, @Param("beginTime")String beginTime,
                                     @Param("endTime")String endTime, @Param("userID")Integer userID,
                                     @Param("companyName")String companyName);
    public List<Comment> getAll();

    public List<Comment> getByCompanyID(int companyID);

    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
