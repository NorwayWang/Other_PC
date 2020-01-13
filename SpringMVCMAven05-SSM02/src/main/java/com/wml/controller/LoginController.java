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

/**
 * 页面登录处理
 */
@Controller
@RequestMapping("/login.do")
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    UserInfoService service;

    /**进入登录页面*/
    @RequestMapping(params = "mothod=enterLoginPage")
    public String toLogin(){
        logger.info("进入登录页面");
        return "login";
    }

    /**进入注册页面*/
    @RequestMapping(params = "mothod=enterRegiest")
    public String toRegiest(){
        logger.info("进入注册页面");
        return "regiest";
    }


    /**对登录信息进行识别辨认*/
    @RequestMapping(params = "mothod=login")
    @ResponseBody
    public String infoProcessing(HttpServletRequest request){
        UserInfo userInfo = service.querryUserInfo(request);
        if(userInfo == null){
            return "0";//表示没有此用户
        }
        return "1";
    }
    /**
     * @ResponseBody注解的作用是将controller的方法返回的对象通过适当
     * 的转换器转换为指定的格式之后，写入到response对象的body区，通常用
     * 来返回JSON数据或者是XML。数据，需要注意的呢，在使用此注解之后不会
     * 再走试图处理器，而是直接将数据写入到输入流中，他的效果等同于通过
     * response对象输出指定格式的数据。
     */

    /**用户信息注册*/
    @RequestMapping(params = "mothod=beginRegiest")
    @ResponseBody
    public String regiest(HttpServletRequest request){
        logger.info("开始注册信息");
        String result = service.regiestuserInfo(request);
        return result;
    }
}
