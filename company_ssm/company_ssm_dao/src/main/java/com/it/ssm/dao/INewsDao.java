package com.it.ssm.dao;

import com.it.ssm.domain.Company;
import com.it.ssm.domain.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface INewsDao {

    public List<News> selectByType(String type);

    //按热度查询前4条数据
    public List<News> selectNewsHot();

    //查询全部新闻
    public List<News> selectAll();

    // 通过ID查询详情
    public News selectAllByID(int id);

    //删除新闻
    public int deleteByID(int id);

    //批量删除
    public void deleteList(Integer[] ids);

    // 更新新闻
    public int updateNews(News news);

    //增加新闻
    public int addNews(News news);

    //模糊查询
    public List<News> selectFuzzy(@Param("keyWords")String keyWords,@Param("type") String type,
                                  @Param("beginTime")String beginTime, @Param("endTime")String endTime);
}
