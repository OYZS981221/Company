package com.it.ssm.service;

import com.it.ssm.domain.News;

import java.util.List;

public interface INewsService {

    //按热度查询前4条数据
    public List<News> selectNewsHot();
    //查询全部新闻
    public List<News> selectAll();
    // 通过ID查询详情
    public News selectAllByID(int id);
    //删除新闻
    public int deleteByID(int id);

    public List<News> selectByType(String type);
    //批量删除
    public void deleteList(Integer[] ids);

    // 更新新闻
    public int updateNews(News news);

    //增加新闻
    public int addNews(News news);

    //模糊查询
    public List<News> selectFuzzy(String keyWords,String type,String beginTime,String endTime);
}
