package com.it.ssm.dao;

import com.it.ssm.domain.Company;
import com.it.ssm.domain.News;
import com.it.ssm.utils.PageBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ICompanyDao {

    //按热度查询前4条数据
    public List<Company> selectCompanyHot();
    //查询全部
    public List<Company> selectAll();

    public List<Company> selectByType(String type);
    //增加企业档案
    public int addCompany(Company company);
    //删除新闻
    public int deleteByID(int id);
    // 更新企业档案
    public int updateCompany(Company company);
    // 查询基本企业档案信息（通过ID）
    public Company queryCompanyByID(int id);
    // 查询企业档案信息（通过ID）
    public Company queryCompanyByIDA(int id);
    //模糊查询（通过公司名或地址）
    public List<Company> queryCompanyX(@Param("keyWords")String keyWords);
    //模糊查询(多条件)
    public List<Company> selectFuzzy(@Param("keyWords")String keyWords,@Param("type") String type,
                                  @Param("beginTime")String beginTime, @Param("endTime")String endTime,
                                     @Param("province")String province, @Param("city")String city,
                                     @Param("district")String district, @Param("address")String address,
                                     @Param("boss")String boss);
    //多条件拼接查询
    public List<Company> queryCompanyM(String name, String type, String address);
    //批量删除
    public void deleteList(Integer[] ids);
}
