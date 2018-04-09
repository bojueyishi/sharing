package com.jup.sharing.restbean;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class GetWorkFlowReq extends BaseUserReq
{
    private int pageNum;

    private int pageSize;
    
    private String userName;

    private String userRole;
    
    @Min(0)
    @Max(1)
    private int status;

    public int getPageNum()
    {
        return pageNum;
    }

    public void setPageNum(int pageNum)
    {
        this.pageNum = pageNum;
    }
    
    public int getPageSize()
    {
        return pageSize;
    }

    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }

    @Override
    public String getUserName()
    {
        return userName;
    }

    @Override
    public void setUserName(String userName)
    {
        this.userName = userName;
    }

    @Override
    public String getUserRole()
    {
        return userRole;
    }

    @Override
    public void setUserRole(String userRole)
    {
        this.userRole = userRole;
    }

    public int getStatus()
    {
        return status;
    }

    public void setStatus(int status)
    {
        this.status = status;
    }

}
