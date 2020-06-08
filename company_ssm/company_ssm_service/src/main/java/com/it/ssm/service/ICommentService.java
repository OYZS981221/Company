package com.it.ssm.service;

import com.it.ssm.domain.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICommentService {
    public int insertComment(Comment comment);

    public List<Comment> getByID(int id);

    public List<Comment> getAll();

    //模糊查询(多条件)
    public List<Comment> selectFuzzy(String keyWords,String beginTime,
                                    String endTime,String userName,
                                    String companyName
    );
    //模糊查询(多条件)
    public List<Comment> selectFuzzyU(String keyWords,String beginTime,
                                    String endTime,Integer userID,
                                    String companyName);
    public List<Comment> getByCompanyID(int companyID);
    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
}
