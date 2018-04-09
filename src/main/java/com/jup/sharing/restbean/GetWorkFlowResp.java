package com.jup.sharing.restbean;

import java.util.List;

import com.jup.sharing.daobean.WorkFlowDaoBean;

public class GetWorkFlowResp extends BaseResp
{
    private int totalCount;
    
    private List<WorkFlowDaoBean> workflowList;
    
    public int getTotalCount()
    {
        return totalCount;
    }
    
    public void setTotalCount(int totalCount)
    {
        this.totalCount = totalCount;
    }
    
    public List<WorkFlowDaoBean> getWorkflowList()
    {
        return workflowList;
    }
    
    public void setWorkflowList(List<WorkFlowDaoBean> workflowList)
    {
        this.workflowList = workflowList;
    }
    
}
