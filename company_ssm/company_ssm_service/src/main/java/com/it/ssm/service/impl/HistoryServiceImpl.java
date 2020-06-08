package com.it.ssm.service.impl;

import com.it.ssm.dao.IHistoryDao;
import com.it.ssm.domain.History;
import com.it.ssm.service.IHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HistoryServiceImpl implements IHistoryService {

    @Autowired
    public IHistoryDao historyDao;

    @Override
    public void insertHistory(History history) {
        historyDao.insertHistory(history);
    }

    @Override
    public List<History> getByID(int id) {
        return historyDao.getByID(id);
    }

    @Override
    public History queryHistoryByID(int id) {
        return historyDao.queryHistoryByID(id);
    }

    @Override
    public List<History> selectFuzzy(String keyWords, String type, int userID, String beginTime, String endTime) {
        return historyDao.selectFuzzy(keyWords, type, userID, beginTime, endTime);
    }

    @Override
    public void deleteList(Integer[] ids) {
        historyDao.deleteList(ids);
    }

    @Override
    public int deleteByID(int id) {
        return historyDao.deleteByID(id);
    }
}
