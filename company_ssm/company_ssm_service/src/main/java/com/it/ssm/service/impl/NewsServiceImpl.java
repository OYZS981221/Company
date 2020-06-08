package com.it.ssm.service.impl;

import com.it.ssm.dao.INewsDao;
import com.it.ssm.domain.News;
import com.it.ssm.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements INewsService {

    @Autowired
    private INewsDao newsDao;

    //按热度查询前4条数据
    @Override
    public List<News> selectNewsHot() {
        return newsDao.selectNewsHot();
    }

    @Override
    public List<News> selectAll() {
        return newsDao.selectAll();
    }

    @Override
    public News selectAllByID(int id) {
        return newsDao.selectAllByID(id);
    }


    @Override
    public int deleteByID(int id) {
        return newsDao.deleteByID(id);
    }

    @Override
    public List<News> selectByType(String type) {
        return newsDao.selectByType(type);
    }

    @Override
    public void deleteList(Integer[] ids) {
        newsDao.deleteList(ids);
    }

    @Override
    public int updateNews(News news) {
        return newsDao.updateNews(news);
    }

    @Override
    public int addNews(News news) {
        return newsDao.addNews(news);
    }

    @Override
    public List<News> selectFuzzy(String keyWords, String type, String beginTime, String endTime) {
        return newsDao.selectFuzzy(keyWords,type,beginTime,endTime);
    }

}
