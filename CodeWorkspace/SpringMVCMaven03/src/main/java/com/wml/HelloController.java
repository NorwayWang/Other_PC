package com.wml;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * HelloController是一个基于@Controller注解的控制器，@RequestMapping注释用来
 * 映射一个请求，value="/hello.do"表示请求由hello()方法进行处理。hello()方法
 * 接收一个Model类型的参数，本例中model中添加了一个名为“message”的字符串对象，该
 * 对象可以在返回的视图中通过request对象获取，最后方法返回一个字符串welcome作为视
 * 图名称
 */
@Controller
public class HelloController {
	private static final Log logger = LogFactory.getLog(HelloController.class);
	@RequestMapping("/hello.do")
	public String hello(Model model) {
		logger.info("hello()方法被调用...");
		model.addAttribute("message", "你好，世界！3");
		return "welcome";
	}
}
