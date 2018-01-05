package com.jup.sharing.restbean;

import com.jup.sharing.daobean.ReleasePlanBean;

public class GetRelePlanDetailResp extends BaseResp
{
    ReleasePlanBean releasePlanDetail;

    public ReleasePlanBean getReleasePlanDetail()
    {
        return releasePlanDetail;
    }

    public void setReleasePlanDetail(ReleasePlanBean releasePlanDetail)
    {
        this.releasePlanDetail = releasePlanDetail;
    }
    
}
