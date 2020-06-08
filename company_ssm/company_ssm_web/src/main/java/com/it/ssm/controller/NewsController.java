package com.it.ssm.controller;

import com.it.ssm.domain.Company;
import com.it.ssm.domain.History;
import com.it.ssm.domain.News;
import com.it.ssm.domain.User;
import com.it.ssm.service.IHistoryService;
import com.it.ssm.service.INewsService;
import com.it.ssm.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/News")
public class NewsController {
    @Autowired
    private INewsService newsService;
    @Autowired
    private IHistoryService historyService;

    /**
     * 查询方法
     * @param
     * @return
     */
    //用户查询新闻详情方法
    @RequestMapping(value = "/news.do")
    public String doNews(@RequestParam("id")int id, Model model, HttpSession session){
        News news = newsService.selectAllByID(id);
        User user = (User)session.getAttribute("user");
        model.addAttribute("news",news);
        History history = new History();
        history.setUserID(user.getId());
        history.setNewsID(id);
        history.setTime(new Date());
        historyService.insertHistory(history);
        return "news/news-details";
    }

    //管理员查询企业档案返回管理员企业档案列表方法
    @RequestMapping(value = "/newslist.do")
    public String doNewslist(Model model) {
        List<News> news = newsService.selectAll();
        model.addAttribute("news", news);
        return "news/news";
    }


    //管理员查询新闻档案返回管理员企业档案列表方法
    @RequestMapping(value = "/newsA.do")
    public String doNewsA(Model model) {
        List<News> news = newsService.selectAll();
        model.addAttribute("news", news);
        return "news/news-list";
    }

    //管理员查询新闻档案方法并将其返回编辑页面方法
    @RequestMapping(value = "/newsB.do")
    public String doNewsB(@RequestParam("id") int id, Model model) {
        News news = newsService.selectAllByID(id);
        model.addAttribute("news", news);
        return "news/news-edit";
    }

    //管理员查模糊查询
    @RequestMapping(value = "/NewsFuzzy.do")
    public String doNewsFuzzy(Model model,String keyWords,String type,String beginTime,String endTime) {
        List<News> news = newsService.selectFuzzy(keyWords, type, beginTime, endTime);
        String address = keyWords+type;
        System.out.println(address);
        model.addAttribute("news", news);
        return "news/news-list";
    }



    //增加新闻方法
    @ResponseBody
    @RequestMapping(value = "/addNews.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public JsonResult<String> addNews(@RequestBody News news,
                                         HttpServletRequest request) throws Exception {

        int count = 1;
        for (String img : news.getFile()) {
            if (count == 1) {
                news.setIndeximg(img);
            } else if (count == 2) {
                news.setOtherimgF(img);
            } else if (count == 3) {
                news.setOtherimgS(img);
            } else if (count == 4) {
                news.setOtherimgT(img);
            }
            count++;
        }

        int insert = newsService.addNews(news);

        if (insert > 0) {
            return new JsonResult<>(200, "上传成功!", null);
        }
        return new JsonResult<>(300, "上传失败", null);
    }

    //修改新闻方法
    @ResponseBody
    @RequestMapping(value = "/editNews.do", method = RequestMethod.POST,
            produces = "application/json;charset=UTF-8")
    public JsonResult<String> editNews(@RequestBody News news, HttpServletRequest request)
            throws Exception {
        int count = 1;
            for (String img : news.getFile()) {
                if (count == 1) {
                    news.setIndeximg(img);
                } else if (count == 2) {
                    news.setOtherimgF(img);
                } else if (count == 3) {
                    news.setOtherimgS(img);
                } else if (count == 4) {
                    news.setOtherimgT(img);
                }
                count++;
            }

        int insert = newsService.updateNews(news);
            System.out.println(insert);

        if (insert > 0) {
            return new JsonResult<>(200, "修改成功!", null);
        }
        return new JsonResult<>(300, "修改失败", null);
    }

    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteNews.do")
    public News deleteCompany(@RequestBody News news) {
        newsService.deleteByID(news.getId());
        News news1 = newsService.selectAllByID(news.getId());
        return news1;
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @RequestMapping(value = "deleteByIds.do")
    @ResponseBody
    public String deleteByIds(Integer[] ids) {
        try {
            //批量删除
            newsService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }



    /**
     * 页面跳转方法
     * @param
     * @return
     */

    //跳转企业增加页面
    @RequestMapping(value = "/addJsp.do")
    public String addCompanyJsp() {
        return "news/news-add";
    }


    //处理JSP页面日期传值问题
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
}
