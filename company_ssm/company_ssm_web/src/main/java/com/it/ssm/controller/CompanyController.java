package com.it.ssm.controller;

import com.it.ssm.dao.ICollectionDao;
import com.it.ssm.domain.*;
import com.it.ssm.service.*;
import com.it.ssm.utils.JsonResult;
import com.it.ssm.utils.UploadUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Controller
@RequestMapping("/Company")
//@SessionAttributes("user")
public class CompanyController {

    @Autowired
    private IUserService userService;
    @Autowired
    private ICompanyService companyService;
    @Autowired
    private INewsService newsService;
    @Autowired
    private IHistoryService historyService;
    @Autowired
    private ICommentService commentService;
    @Autowired
    private ICollectionService collectionService;


    @RequestMapping(value = "/index.do",method = RequestMethod.GET)
    public String indexCompany(Model model) {
        List<Company> companies = companyService.selectCompanyHot();
        List<News> news = newsService.selectNewsHot();
        model.addAttribute("company", companies);
        model.addAttribute("news", news);
        return "company/index";
    }

    /**
     * 查询方法
     *
     * @param
     * @return
     */

    //用户查询企业档案详情方法
    @RequestMapping(value = "/companyA.do")
    public String doCompanyA(@RequestParam("id") int id, Model model,HttpSession session) {
        Company company = companyService.queryCompanyByIDA(id);
        model.addAttribute("company", company);
        List<Comment> comment = commentService.getByCompanyID(id);
        model.addAttribute("comment", comment);
        User user = (User)session.getAttribute("user");
        History history = new History();
        history.setUserID(user.getId());
        history.setCompanyID(id);
        history.setTime(new Date());
        historyService.insertHistory(history);
        return "company/company-details";
    }



    //首页方法
    @RequestMapping(value = "/index1.do",method = RequestMethod.GET)
    public String indexCompany(Model model, HttpSession session) {
        List<Company> companies = companyService.selectCompanyHot();
        List<News> news = newsService.selectNewsHot();
        User user = (User)session.getAttribute("user");
        List<Collection> collections = collectionService.getByID(user.getId());
        Random random = new Random();
        int n = random.nextInt(collections.size());
        String type = collections.get(n).getCompany().getType();
        List<Company> companyList = companyService.selectByType(type);
        List<News> newsList = newsService.selectByType(type);
        model.addAttribute("companyList", companyList);
        model.addAttribute("newsList", newsList);
        model.addAttribute("company", companies);
        model.addAttribute("news", news);
        return "company/index";
    }


    //管理员查询企业档案返回管理员企业档案列表方法
    @RequestMapping(value = "/companyB.do")
    public String doCompanyB(Model model) {
        List<Company> company = companyService.selectAll();
        model.addAttribute("company", company);
        return "company/company-list";
    }

    //管理员查询企业档案方法并将其返回编辑页面方法
    @RequestMapping(value = "/companyC.do")
    public String doCompanyC(@RequestParam("id") int id, Model model) {
        Company company = companyService.queryCompanyByIDA(id);
        model.addAttribute("company", company);
        return "company/company-edit";
    }

    //将企业档案展示到企业档案列表
    @RequestMapping(value = "/companyD.do")
    public String doCompanyD(Model model) {
        List<Company> company = companyService.selectAll();
        model.addAttribute("company", company);
        return "company/company";
    }


    //模糊查询（通过公司名或地址）
    @RequestMapping(value = "/selectFuzzy.do")
    public String selectFuzzy(Model model,String keyWords,String type,String beginTime,String endTime,
                             String province,String city, String district,String address,String boss) {
        List<Company> companys = companyService.selectFuzzy(keyWords, type, beginTime, endTime, province, city, district, address,boss);
        model.addAttribute("company", companys);
        return "company/company-list";
    }

    //模糊查询（通过公司名或地址）
    @RequestMapping(value = "/selectFuzzyIndex.do")
    public String selectFuzzyIndex(Model model,String keyWords,String type,String beginTime,String endTime,
                              String province,String city, String district,String address,String boss) {
        List<Company> companys = companyService.selectFuzzy(keyWords, type, beginTime, endTime, province, city, district, address,boss);
        model.addAttribute("company", companys);
        return "company/company";
    }


    /**
     * 管理员增加方法
     *
     * @param
     * @return
     */

    //增加企业档案方法
    @ResponseBody
    @RequestMapping(value = "/addCompany.do", method = RequestMethod.POST,
            produces = "application/json;charset=UTF-8")
    public JsonResult<String> addCompany(@RequestBody Company company,
                                         HttpServletRequest request) throws Exception {

        int count = 1;
        for (String img : company.getFile()) {
            if (count == 1) {
                company.setIndeximg(img);
            } else if (count == 2) {
                company.setOtherimgF(img);
            } else if (count == 3) {
                company.setOtherimgS(img);
            } else if (count == 4) {
                company.setOtherimgT(img);
            } else if (count ==5){
                company.setAddressimg(img);
            }
            count++;
        }

        int insert = companyService.addCompany(company);

        if (insert > 0) {
            return new JsonResult<>(200, "上传成功!", null);
        }
        return new JsonResult<>(300, "上传失败", null);
    }


    /**
     * 管理员修改方法方法
     *
     * @param
     * @return
     */
    //修改企业档案方法
    @ResponseBody
    @RequestMapping(value = "/editCompany.do", method = RequestMethod.POST,
            produces = "application/json;charset=UTF-8")
    public JsonResult<String> editCompany(@RequestBody Company company, HttpServletRequest request)
            throws Exception {
        int count = 1;
        if (company.getFile()!=null) {
            for (String img : company.getFile()) {
                if (count == 1) {
                    company.setIndeximg(img);
                } else if (count == 2) {
                    company.setOtherimgF(img);
                } else if (count == 3) {
                    company.setOtherimgS(img);
                } else if (count == 4) {
                    company.setOtherimgT(img);
                } else if (count == 5) {
                    company.setAddressimg(img);
                }
                count++;
            }
        }
        int insert = companyService.updateCompany(company);

        if (insert > 0) {
            return new JsonResult<>(200, "修改成功!", null);
        }
        return new JsonResult<>(300, "修改失败", null);
    }


    /**
     * 管理员删除方法
     *
     * @param
     * @return
     */

    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteCompany.do")
    public Company deleteCompany(@RequestBody Company company) {
        companyService.deleteByID(company.getId());
        Company company1 = companyService.queryCompanyByID(company.getId());
        return company1;
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "deleteByIds.do")
    @ResponseBody
    public String deleteByIds(Integer[] ids) {
        try {
            //批量删除
            companyService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }


    /**
     * 页面跳转方法
     *
     * @param
     * @return
     */

    //跳转企业增加页面
    @RequestMapping(value = "/addJsp.do")
    public String addCompanyJsp() {
        return "company/company-add";
    }


    //处理JSP页面日期传值问题
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }

    @RequestMapping("/save.do")
    public static String uploadFile(MultipartFile img) throws IOException {
        //保存数据库的路径
        String sqlPath = null;
        //定义文件保存的本地路径
        String localPath = "E:\\IdeaProjects\\images\\";
        File fileUrl=new File(localPath);
        if (!fileUrl.exists()){
            fileUrl.mkdir();
        }
        //定义 文件名
        String filename = null;
        //生成uuid作为文件名称
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //获得文件类型（可以判断如果不是图片，禁止上传）
        String contentType = img.getContentType();
        //获得文件后缀名
        String suffixName = contentType.substring(contentType.indexOf("/") + 1);
        //得到 文件名
        filename = uuid + "." + suffixName;
        System.out.println(filename);
        //文件保存路径
        img.transferTo(new File(localPath + filename));
        sqlPath = "/image/" + filename;
        return sqlPath;
    }

}
