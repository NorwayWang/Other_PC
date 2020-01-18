package com.wml.service;

import com.wml.dao.UserInfoDao;
import com.wml.entity.UserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.*;

@Service
public class UserInfoService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    UserInfoDao dao;

    public List<UserInfo> getUserInfoAll(){
        List<UserInfo> result = dao.querryUserInfoAll();
        return result;
    }
}
