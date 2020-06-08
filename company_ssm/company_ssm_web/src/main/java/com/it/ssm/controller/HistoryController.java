package com.it.ssm.controller;


import com.it.ssm.domain.History;
import com.it.ssm.domain.Log;
import com.it.ssm.service.IHistoryService;
import com.it.ssm.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/History")
public class HistoryController {

    @Autowired
    private IHistoryService historyService;

    @RequestMapping(value = "/history.do",method = RequestMethod.GET)
    public String history(@RequestParam int userid, Model model) {
        List<History> history = historyService.getByID(userid);

        model.addAttribute("history", history);
        return "user/history-list";
    }


    //模糊查询（通过公司名或地址）
    @RequestMapping(value = "/selectFuzzy.do")
    public String selectFuzzy(Model model,String keyWords, String type,int userID,
                              String beginTime, String endTime) {
        List<History> histories =historyService.selectFuzzy(keyWords, type, userID, beginTime, endTime);
        model.addAttribute("histories", histories);
        return "user/history-list";
    }


    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteHistory.do",produces = "application/json;charset=UTF-8")
    public JsonResult<String> deleteHistory(@RequestBody History history) throws Exception{
        try {
            historyService.deleteByID(history.getId());
        } catch (Exception e) {
            return new JsonResult<>(300, "删除失败!", null);
        }
        return new JsonResult<>(200, "删除成功!", null);

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
            historyService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }


}
