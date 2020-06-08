package com.it.ssm.service;

import com.it.ssm.domain.Company;

import java.util.List;

public interface ICompanyService {

    //按热度查询前4条数据
    public List<Company> selectCompanyHot();
    //查询全部
    public List<Company> selectAll();
    //批量删除
    public void deleteList(Integer[] ids);
    //删除企业
    public int deleteByID(int id);
    public List<Company> selectByType(String type);
    //增加企业档案
    public int addCompany(Company company);
    // 更新企业档案
    public int updateCompany(Company company);
    // 查询基本企业档案信息（通过ID）
    public Company queryCompanyByID(int id);
    // 查询企业档案信息（通过ID）
    public Company queryCompanyByIDA(int id);
    //模糊查询（通过公司名或地址）
    public List<Company> selectFuzzy(String keyWords,String type,String beginTime,String endTime,
                                     String province,String city, String district,String address,String boss);
    //模糊查询（通过公司名或地址）
    public List<Company> queryCompanyX(String keyWords);
    //多条件拼接查询
    public List<Company> queryCompanyM(String name, String type, String address);
}
