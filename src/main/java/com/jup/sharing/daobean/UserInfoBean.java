package com.jup.sharing.daobean;

public class UserInfoBean
{
    private String userName;

    private String userPasswd;

    private int userRole;

    public String getUserName()
    {
        return userName;
    }

    public void setUserName(String userName)
    {
        this.userName = userName;
    }

    public String getUserPasswd()
    {
        return userPasswd;
    }

    public void setUserPasswd(String userPasswd)
    {
        this.userPasswd = userPasswd;
    }

    public int getUserRole()
    {
        return userRole;
    }

    public void setUserRole(int userRole)
    {
        this.userRole = userRole;
    }

}
