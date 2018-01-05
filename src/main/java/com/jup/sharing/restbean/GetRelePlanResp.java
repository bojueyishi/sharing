package com.jup.sharing.restbean;

import java.util.ArrayList;
import java.util.List;

import com.jup.sharing.daobean.ReleasePlanBean;

public class GetRelePlanResp extends BaseResp
{
    private List<ReleasePlanBean> relePlans = new ArrayList<ReleasePlanBean>();

    private int totalCount;
    
    public List<ReleasePlanBean> getRelePlans()
    {
        return relePlans;
    }
    
    public void setRelePlans(List<ReleasePlanBean> relePlans)
    {
        this.relePlans = relePlans;
    }
    
    public int getTotalCount()
    {
        return totalCount;
    }
    
    public void setTotalCount(int totalCount)
    {
        this.totalCount = totalCount;
    }
}
