package com.wml.controller;

import com.wml.entity.UserInfo;
import com.wml.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.*;

@Controller
@RequestMapping("/user")
public class MainController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    UserInfoService service;

    @RequestMapping(value="/toLogin.do",method = RequestMethod.GET)
    public String goToLogin(){
        logger.info("进入登录页面");
        return "login";
    }

    @RequestMapping("/toShowUserInfo.do")
    public String goToShowUserInfo(Model model){
        logger.info("进入用户信息展示页面");
        List<UserInfo> list = service.getUserInfoAll();
        model.addAttribute("resoultList",list);
        return "showUserInfo";
    }
}
