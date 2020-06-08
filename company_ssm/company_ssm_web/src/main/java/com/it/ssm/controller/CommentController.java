package com.it.ssm.controller;

import com.it.ssm.domain.Comment;
import com.it.ssm.domain.History;
import com.it.ssm.service.ICommentService;
import com.it.ssm.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/Comment")
public class CommentController {
    @Autowired
    private ICommentService commentService;


    @ResponseBody
    @RequestMapping(value = "/insertComment.do",method = RequestMethod.POST)
    public JsonResult<String> insertComment(@RequestBody Comment comment) throws Exception{
        int insert = commentService.insertComment(comment);

        if (insert > 0) {
            return new JsonResult<>(200, "评论成功!", null);
        }
        return new JsonResult<>(300, "评论失败", null);
    }



    @RequestMapping(value = "/comment.do",method = RequestMethod.GET)
    public String comment(@RequestParam int userid, Model model) {
        List<Comment> comment = commentService.getByID(userid);

        model.addAttribute("comment", comment);
        return "user/comment-list";
    }

    @RequestMapping(value = "/commentAdmin.do",method = RequestMethod.GET)
    public String commentAdmin(Model model) {
        List<Comment> comment = commentService.getAll();

        model.addAttribute("comment", comment);
        return "company/comment-list";
    }

    @RequestMapping(value = "/selectFuzzy.do",method = RequestMethod.POST)
    public String selectFuzzy(Model model,String keyWords,String beginTime,
                              String endTime,String userName,
                              String companyName) {
        List<Comment> comment = commentService.selectFuzzy(keyWords, beginTime, endTime, userName, companyName);

        model.addAttribute("comment", comment);
        return "company/comment-list";
    }

    @RequestMapping(value = "/selectFuzzyU.do",method = RequestMethod.POST)
    public String selectFuzzyU(Model model,String keyWords,String beginTime,
                               String endTime,Integer userID,
                               String companyName) {
        List<Comment> comment = commentService.selectFuzzyU(keyWords, beginTime, endTime, userID, companyName);

        model.addAttribute("comment", comment);
        return "user/comment-list";
    }

    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteComment.do")
    public JsonResult<String> deleteComment(@RequestBody Comment comment) throws Exception{
        try {
            //批量删除
            commentService.deleteByID(comment.getId());
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
            commentService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }
}
