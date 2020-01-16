package com.wml;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 * HelloController是一个实现Controller接口的控制器，可以处理一个单一的请求动作
 */
public class HelloController implements Controller{
    private static final Log logger = LogFactory.getLog(HelloController.class);
    /**
     * handleRequest是Controller接口必须要实现的方法
     *  该方法必须返回一个包含视图名或视图名和模型的ModelAndView对象
     */
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        logger.info("handleRequest方法被调用...");
        ModelAndView model = new ModelAndView();
        //添加模型数据，可以是任意的Object对象
        model.addObject("message", "你好，世界！");
        //设置视图名，视图解析器会根据名字解析到具体的视图页面
        model.setViewName("/WEB-INF/page/welcome.jsp");
        return model;
    }

}