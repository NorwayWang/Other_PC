package com.wml.controller;

import com.wml.entity.UserInfo;
import com.wml.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("/userInfo.do")
public class UserInfoController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    UserInfoService service;

    /**用户信息分页查询*/
    @RequestMapping(params = "method=getPaperInfo")
    @ResponseBody
    public Map<String,Object> getUserInfo(HttpServletRequest request) {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        //查询数据库中用户信息一共多少条
        int total = service.getUserInfoCount();
        logger.info("数据库中用户信息一共"+total+"条");
        List<UserInfo> userInfoList = service.querryUserInfoLimit(request);
        logger.info("分页查询的用户信息:"+userInfoList);
        resultMap.put("total", total);
        resultMap.put("rows", userInfoList);
        return resultMap;
    }
}
