package com.wml.controller;

import java.util.*;
import com.wml.StringUtil;
import com.wml.entity.UserInfo;
import com.wml.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userInfoMagger.do")
public class MainPageManagerController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    /**进入用户信息页面*/
    @RequestMapping(params = "mothod=enterManagePage")
    public String toUserInfo(){
        logger.info("进入用户信息页面");
        return "userInfoManage";
    }

    /**用户信息展示*/
    @RequestMapping(params = "mothod=enterUserInfoShowPage")
    public String toUserInfoShow(){
        logger.info("进入用户信息展示页面");
        return "userInfoShow";
    }

    /**用户信息修改*/
    @RequestMapping(params = "mothod=enterUserInfoUpdatePage")
    public String toUpdateUserInfo(){
        logger.info("进入用户信息修改页面");
        return "userInfoUpdate";
    }

}
