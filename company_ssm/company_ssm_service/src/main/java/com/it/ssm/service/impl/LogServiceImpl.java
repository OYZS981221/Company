package com.it.ssm.service.impl;


import com.it.ssm.dao.ILogDao;
import com.it.ssm.domain.Log;
import com.it.ssm.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class LogServiceImpl implements ILogService {
    @Autowired
    public ILogDao logDao;
    @Override
    public int insertLog(Log log) {
        return logDao.insertLog(log);
    }

    @Override
    public List<Log> selectLog(int userID) {
        return logDao.selectLog(userID
        );
    }

    @Override
    public List<Log> selectFuzzy(String beginTime, String endTime, Integer userID) {
        return logDao.selectFuzzy(beginTime, endTime, userID);
    }

    @Override
    public void deleteList(Integer[] ids) {
        logDao.deleteList(ids);
    }

    @Override
    public int deleteByID(int id) {
        return logDao.deleteByID(id);
    }
}
