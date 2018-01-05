package com.jup.sharing.service;

import java.util.List;

import javax.annotation.Resource;

import com.jup.sharing.Constants;
import com.jup.sharing.dao.ReleasePlanDao;
import com.jup.sharing.daobean.RelePlanDaoParam;
import com.jup.sharing.daobean.ReleasePlanBean;
import com.jup.sharing.restbean.BaseResp;
import com.jup.sharing.restbean.DeleRelePlanListReq;
import com.jup.sharing.restbean.GetRelePlanDetailResp;
import com.jup.sharing.restbean.GetRelePlanReq;
import com.jup.sharing.restbean.GetRelePlanResp;

public class RelePlanService
{
    @Resource(name = "relePlanDao")
    ReleasePlanDao relePlanDao = null;

    public GetRelePlanResp getRelePlanList(GetRelePlanReq req)
    {
        GetRelePlanResp resp = new GetRelePlanResp();
        
        //获取所有的版本计划
        List<ReleasePlanBean> releasePlans = relePlanDao.getReleasePlan();
        
        if (releasePlans != null && !releasePlans.isEmpty())
        {
            //对所有版本计划进行分页
            if (req.getPageSize() != 0)
            {
                resp.setTotalCount(releasePlans.size());
                
                int fromIndex = Math.min(req.getPageNum() * req.getPageSize(), releasePlans.size());
                int toIndex = Math.min(fromIndex + req.getPageSize(), releasePlans.size());
                
                releasePlans = releasePlans.subList(fromIndex, toIndex);
                resp.setRelePlans(releasePlans);
            }
        }

        return resp;
    }

    public GetRelePlanDetailResp getRelePlanDetial(GetRelePlanReq req)
    {
        GetRelePlanDetailResp resp = new GetRelePlanDetailResp();
        
        RelePlanDaoParam relePlanDaoParam = new RelePlanDaoParam();
        relePlanDaoParam.setRelePlanName(req.getRelePlanName());
        ReleasePlanBean releasePlanDetail = relePlanDao.getReleasePlanDetail(relePlanDaoParam);
        resp.setReleasePlanDetail(releasePlanDetail);

        return resp;
    }

    public BaseResp deleteRelePlan(GetRelePlanReq req)
    {
        BaseResp resp = new BaseResp();
        
        RelePlanDaoParam relePlanDaoParam = new RelePlanDaoParam();
        relePlanDaoParam.setRelePlanName(req.getRelePlanName());
        relePlanDao.deleReleasePlanByName(relePlanDaoParam);
        resp.setResultCode(Constants.SUCCESS);
        
        return resp;
    }

    public BaseResp deleteRelePlanList(DeleRelePlanListReq req)
    {
        BaseResp resp = new BaseResp();
        relePlanDao.deleReleasePlanList(req.getRelePlanList());
        resp.setResultCode(Constants.SUCCESS);
        
        return resp;
    }

}
