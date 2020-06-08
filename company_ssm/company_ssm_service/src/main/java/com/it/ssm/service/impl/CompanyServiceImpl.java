package com.it.ssm.service.impl;

import com.it.ssm.dao.ICompanyDao;
import com.it.ssm.domain.Company;
import com.it.ssm.service.ICompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyServiceImpl implements ICompanyService {

    @Autowired
    public ICompanyDao companyDao;

    //按热度查询前4条数据
    @Override
    public List<Company> selectCompanyHot() {
        return companyDao.selectCompanyHot();
    }

    @Override
    public List<Company> selectAll() {
        return companyDao.selectAll();
    }

    @Override
    public void deleteList(Integer[] ids) {
        companyDao.deleteList(ids);
    }

    @Override
    public int deleteByID(int id) {
        return companyDao.deleteByID(id);
    }

    @Override
    public List<Company> selectByType(String type) {
        return companyDao.selectByType(type);
    }

    @Override
    public int addCompany(Company company) {
        return companyDao.addCompany(company);
    }

    @Override
    public int updateCompany(Company company) {
        return companyDao.updateCompany(company);
    }

    @Override
    public Company queryCompanyByID(int id) {
        return companyDao.queryCompanyByID(id);
    }

    @Override
    public Company queryCompanyByIDA(int id) {
        return companyDao.queryCompanyByIDA(id);
    }

    @Override
    public List<Company> selectFuzzy(String keyWords, String type, String beginTime, String endTime, String province, String city, String district, String address,String boss) {
        return companyDao.selectFuzzy(keyWords, type, beginTime, endTime, province, city, district, address,boss);
    }

    @Override
    public List<Company> queryCompanyX(String keyWords) {
        return companyDao.queryCompanyX(keyWords);
    }

    @Override
    public List<Company> queryCompanyM(String name, String type, String address) {
        return companyDao.queryCompanyM(name,type,address);
    }


}
