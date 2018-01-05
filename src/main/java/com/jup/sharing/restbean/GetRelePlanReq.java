package com.jup.sharing.restbean;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class GetRelePlanReq
{
    private String relePlanName;

    @Min(0)
    private int pageNum;

    @Min(0)
    @Max(20)
    private int pageSize;

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
    
    public String getRelePlanName()
    {
        return relePlanName;
    }
    
    public void setRelePlanName(String relePlanName)
    {
        this.relePlanName = relePlanName;
    }
    
}
