package com.it.ssm.controller;

import com.it.ssm.domain.Collection;
import com.it.ssm.domain.History;
import com.it.ssm.domain.Log;
import com.it.ssm.service.ILogService;
import com.it.ssm.utils.JsonResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/Log")
public class LogController {
    @Autowired
    private ILogService logService;

    @RequestMapping(value = "/log.do",method = RequestMethod.GET)
    public String log(@RequestParam int userid, Model model) {
        List<Log> log = logService.selectLog(userid);

        model.addAttribute("log", log);
        return "user/log-list";
    }


    //模糊查询（通过公司名或地址）
    @RequestMapping(value = "/selectFuzzy.do")
    public String selectFuzzy(Model model, int userID, String beginTime, String endTime) {
        List<Log> log =logService.selectFuzzy(beginTime, endTime, userID);
        model.addAttribute("log", log);
        return "user/collection-list";
    }

    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteLog.do")
    public JsonResult<String> deleteLog(@RequestBody Log log) throws Exception{
        try {
            //批量删除
            logService.deleteByID(log.getId());
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
            logService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }
}
