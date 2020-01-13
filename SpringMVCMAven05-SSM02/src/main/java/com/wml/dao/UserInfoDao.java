package com.wml.dao;

import com.wml.entity.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserInfoDao {
    //根据用户名查询用户信息
    UserInfo getUserInfoByUserName(String username);

    //插入用户信息
    int insertIntoUserInfo(UserInfo userInfo);

    //查询目前已有的用户名
    List<String> getUserNames();

    //查询目前以注册的邮箱
    List<String> getEmail();

    //查询目前数据库中已有的用户数量
    int querryTotal();

    //根据条件分页查询用户信息
    List<UserInfo> querryUserInfoLimit(Map<String, Integer> paramMap);
}
