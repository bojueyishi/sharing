package com.jup.sharing.dao;

import java.util.List;

import com.jup.sharing.daobean.WorkFlowDaoBean;

public interface WorkFlowDao
{
    void insertWorkFlow(WorkFlowDaoBean workFlowDaoBean);
    
    List<WorkFlowDaoBean> getWorkFlow(WorkFlowDaoBean workFlowDaoBean);
}
