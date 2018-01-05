package com.jup.sharing.dao;

import com.jup.sharing.daobean.UserInfoBean;

public interface UserInfoDao
{
    UserInfoBean findUserInfo(UserInfoBean userInfoBean);
}
