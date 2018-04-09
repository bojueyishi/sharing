package com.jup.sharing.restbean;

public class BaseUserReq
{
    private String userName;
    
    private String userRole;
    
    private String groupName;
    
    public String getUserName()
    {
        return userName;
    }
    
    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    
    public String getUserRole()
    {
        return userRole;
    }
    
    public void setUserRole(String userRole)
    {
        this.userRole = userRole;
    }
    
    public String getGroupName()
    {
        return groupName;
    }
    
    public void setGroupName(String groupName)
    {
        this.groupName = groupName;
    }
    
}
