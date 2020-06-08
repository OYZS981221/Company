package com.it.ssm.service.impl;

import com.it.ssm.dao.ICollectionDao;
import com.it.ssm.dao.ICommentDao;
import com.it.ssm.domain.Collection;
import com.it.ssm.domain.Comment;
import com.it.ssm.service.ICollectionService;
import com.it.ssm.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectionServiceImpl implements ICollectionService {
    @Autowired
    public ICollectionDao collectionDao;

    @Override
    public int insertCollection(Collection collection) {
        return collectionDao.insertCollection(collection);
    }

    @Override
    public List<Collection> getByID(int id) {
        return collectionDao.getByID(id);
    }

    @Override
    public Collection selectUserID(Collection collection) {
        return collectionDao.selectUserID(collection);
    }

    @Override
    public List<Collection> selectFuzzy(Integer userID, String keyWords, String type) {
        return  collectionDao.selectFuzzy(userID,keyWords,type);
    }



    @Override
    public void deleteList(Integer[] ids) {
        collectionDao.deleteList(ids);
    }

    @Override
    public int deleteByID(int id) {
        return collectionDao.deleteByID(id);
    }
}
