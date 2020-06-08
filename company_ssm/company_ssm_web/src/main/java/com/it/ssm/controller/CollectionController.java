package com.it.ssm.controller;


import com.it.ssm.domain.Collection;
import com.it.ssm.domain.Company;
import com.it.ssm.domain.History;
import com.it.ssm.service.ICollectionService;
import com.it.ssm.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/Collection")
public class CollectionController {
    @Autowired
    private ICollectionService collectionService;

    @ResponseBody
    @RequestMapping(value = "/insertCollection.do",method = RequestMethod.POST)
    public JsonResult<String> insertCollection(@RequestBody Collection collection) throws Exception {
        Collection col = collectionService.selectUserID(collection);
        if (col == null) {
            int insert = collectionService.insertCollection(collection);
            if (insert > 0) {
                return new JsonResult<>(200, "收藏成功!", null);
            }
            return new JsonResult<>(300, "收藏失败！", null);
        }else {
            return new JsonResult<>(400, "该企业已收藏，无法重复收藏！", null);
        }
    }

    @RequestMapping(value = "/collection.do",method = RequestMethod.GET)
    public String collection(@RequestParam int userid, Model model) {
        List<Collection> collection = collectionService.getByID(userid);

        model.addAttribute("collection", collection);
        return "user/collection-list";
    }

    //模糊查询（通过公司名或地址）
    @RequestMapping(value = "/selectFuzzy.do")
    public String selectFuzzy(Model model,Integer userID,String keyWords,String type) {
        List<Collection> collection = collectionService.selectFuzzy(userID, keyWords, type);
        model.addAttribute("collection", collection);
        return "user/collection-list";
    }

    //管理员删除企业档案
    @ResponseBody
    @RequestMapping(value = "/deleteCollection.do")
    public JsonResult<String> deleteCompany(@RequestBody Collection collection) throws Exception{
        try {
            //批量删除
            collectionService.deleteByID(collection.getId());
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
            collectionService.deleteList(ids);//删除的方法
        } catch (Exception e) {
            return "error";
        }
        return "ok";
    }

}
