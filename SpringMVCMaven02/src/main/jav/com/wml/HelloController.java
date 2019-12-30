package com.wml;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * HelloController是一个基于注解的控制器，可以同时处理多个请求动作，并且无
 * 需实现任何接口。@Controller注解用于指示该类是个控制器
 */
@Controller
public class HelloController{
	private static final Log logger = LogFactory.getLog(HelloController.class);
	/**
	 * 注解@RequestMapping(value = "/hello.do")，用来映射请求的URL和请求方法等，
	 * 本例用来映射“/hello.do”。hello()只是一个普通方法，该方法返回一个包含视图名
	 * 和模型的ModelAndView对象
	 */
	@RequestMapping(value = "/hello.do")
	public ModelAndView hello(){
		logger.info("hello()方法被调用...");
		ModelAndView model = new ModelAndView();
		//添加模型数据，可以是任意的Object对象
		model.addObject("message", "你好，世界2！");
		//设置视图名，视图解析器会根据名字解析到具体的视图页面
		model.setViewName("/WEB-INF/page/welcome.jsp");
		return model;
	}

	/**
	 * 注解@Controller用于指示spring类的实例是一个控制器，使用@Controller注解
	 * 的类的不需要继承特定的父类或者实现特定的接口，相对之前的版本实现Controller
	 * 接口变得更加简单，而且Controller接口的实现类只能处理一个单一的请求动作，然
	 * 而@Controller注解的控制器可以支持同时多个请求动作。更加灵活。
	 */
}
