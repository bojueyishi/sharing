package com.jup.sharing.dao;

import java.util.List;

import com.jup.sharing.daobean.RelePlanDaoParam;
import com.jup.sharing.daobean.ReleasePlanBean;

public interface ReleasePlanDao
{
    List<ReleasePlanBean> getReleasePlan();
    
    ReleasePlanBean getReleasePlanDetail(RelePlanDaoParam relePlanDaoParam);

    void deleReleasePlanByName(RelePlanDaoParam relePlanDaoParam);

    void deleReleasePlanList(List<String> palaNumList);
}
