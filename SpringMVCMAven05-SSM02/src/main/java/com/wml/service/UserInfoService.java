package com.wml.service;

import com.wml.StringUtil;
import com.wml.dao.UserInfoDao;
import com.wml.entity.UserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class UserInfoService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    UserInfoDao dao;

    /**根据用户名查找用户信息*/
    public UserInfo querryUserInfo(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username != null || password != null){
            UserInfo userInfo = dao.getUserInfoByUserName(username);
            //比较密码是否正确
            if(userInfo != null && password.equals(userInfo.getPassword())){
                return userInfo;
            }
        }
        return null;
    }

    /**注册用户*/
    public String regiestuserInfo(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String realname = request.getParameter("realname");
        String business = request.getParameter("business");
        String eamil = request.getParameter("eamil");
        if(StringUtil.isEmpty(username)|| StringUtil.isEmpty(password)|| StringUtil.isEmpty(realname)
                || StringUtil.isEmpty(business) || StringUtil.isEmpty(eamil)){
            return "00";//用户信息未填写完整
        }
        //注册前先查询是否已注册 -- 分别获取邮件和用户名信息
        List<String> userNameList = dao.getUserNames();
        if(userNameList.contains(username)){
            return "01";//用户名已存在
        }
        List<String> emailList = dao.getEmail();
        if(emailList.contains(eamil)){
            return "02";//邮箱已注册
        }
        UserInfo userInfo = userInfo = new UserInfo();
        userInfo.setUserName(username);
        userInfo.setPassword(password);
        userInfo.setRealName(realname);
        userInfo.setBusiness(business);
        userInfo.setEmail(eamil);
        int num = dao.insertIntoUserInfo(userInfo);
        if(num != 1){
            return "error";//数据库插入失败
        }
        return "ok";//成功注册
    }

    /**计算用户信息总共多少条数据*/
    public int getUserInfoCount() {
        return dao.querryTotal();
    }

    /**根据条件进行分页查询*/
    public List<UserInfo> querryUserInfoLimit(HttpServletRequest request) {
        //页面显示的行数
        String rows = request.getParameter("rows");
        //显示第几页数据
        String page = request.getParameter("page");
        int rowsNum = StringUtil.isEmpty(rows)?0:Integer.parseInt(rows);
        int pageNum = StringUtil.isEmpty(page)?0:Integer.parseInt(page);
        logger.info("页面显示的行数:"+rowsNum+",显示第"+pageNum+"页数据");
        //查询数据库中用户信息一共多少条
        int total = dao.querryTotal();
        //计算页面一共能展示多少页
        Map<String,Integer> paramMap = new HashMap<String,Integer>();
        if(total != 0){
            int maxPage = total%rowsNum != 0?total/rowsNum+1:total/rowsNum;
            if(pageNum < 1){
                paramMap.put("dataBegin",0);
                paramMap.put("showLine",rowsNum);
            }else if(Integer.parseInt(page) >= maxPage){
                paramMap.put("dataBegin",(maxPage-1)*rowsNum);
                paramMap.put("showLine",rowsNum);
            }else{
                paramMap.put("dataBegin",(pageNum-1)*rowsNum);
                paramMap.put("showLine",rowsNum);
            }
        }
        //分页查询用户信息
        List<UserInfo> result = dao.querryUserInfoLimit(paramMap);
        return result;
    }
}
