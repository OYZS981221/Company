package com.it.ssm.service.impl;

import com.it.ssm.dao.ICommentDao;
import com.it.ssm.domain.Comment;
import com.it.ssm.service.ICommentService;
import com.it.ssm.service.ICompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements ICommentService {
    @Autowired
    public ICommentDao commentDao;
    @Override
    public int insertComment(Comment comment) {
        return commentDao.insertComment(comment);
    }

    @Override
    public List<Comment> getByID(int id) {
        return commentDao.getByID(id);
    }

    @Override
    public List<Comment> getAll() {
        return commentDao.getAll();
    }

    @Override
    public List<Comment> selectFuzzy(String keyWords, String beginTime, String endTime, String userName, String companyName) {
        return commentDao.selectFuzzy(keyWords, beginTime, endTime, userName, companyName);
    }

    @Override
    public List<Comment> selectFuzzyU(String keyWords, String beginTime, String endTime, Integer userID, String companyName) {
        return commentDao.selectFuzzyU(keyWords, beginTime, endTime, userID, companyName);
    }

    @Override
    public List<Comment> getByCompanyID(int companyID) {
        return commentDao.getByCompanyID(companyID);
    }

    @Override
    public void deleteList(Integer[] ids) {
        commentDao.deleteList(ids);
    }

    @Override
    public int deleteByID(int id) {
        return commentDao.deleteByID(id);
    }
}
