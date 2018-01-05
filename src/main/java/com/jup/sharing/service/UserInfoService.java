package com.jup.sharing.service;

import javax.annotation.Resource;

import com.jup.sharing.dao.UserInfoDao;
import com.jup.sharing.daobean.UserInfoBean;

public class UserInfoService
{
    @Resource(name = "userInfoDao")
    UserInfoDao userInfoDao = null;

    public UserInfoBean getUserInfo(String userName)
    {
        UserInfoBean userInfoDaoBean = new UserInfoBean();
        userInfoDaoBean.setUserName(userName);
        UserInfoBean userInfoBean = userInfoDao.findUserInfo(userInfoDaoBean);
        return userInfoBean;
    }
}
