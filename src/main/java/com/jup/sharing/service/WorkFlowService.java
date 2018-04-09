package com.jup.sharing.service;

import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.annotation.Resource;

import com.jup.sharing.dao.EquipmentDao;
import com.jup.sharing.dao.WorkFlowDao;
import com.jup.sharing.daobean.EquipmentDaoBean;
import com.jup.sharing.daobean.WorkFlowDaoBean;
import com.jup.sharing.restbean.BaseResp;
import com.jup.sharing.restbean.GetAvailableEquipmentResp;
import com.jup.sharing.restbean.GetWorkFlowReq;
import com.jup.sharing.restbean.GetWorkFlowResp;
import com.jup.sharing.restbean.NewWorkFlowReq;

class AscSortComparator implements Comparator<Object>, Serializable
{
    private static final long serialVersionUID = 1L;
    
    public int compare(Object o1, Object o2)
    {
        WorkFlowDaoBean s1 = (WorkFlowDaoBean)o1;
        WorkFlowDaoBean s2 = (WorkFlowDaoBean)o2;
        if (s1.getCreateTime() < s2.getCreateTime())
        {
            return 1;
        }
        else if (s1.getCreateTime() > s2.getCreateTime())
        {
            return -1;
        }
        else
        {
            return 0;
        }
    }
}

public class WorkFlowService
{
    @Resource(name = "workFlowDao")
    WorkFlowDao workFlowDao = null;

    @Resource(name = "equipmentDao")
    EquipmentDao equipmentDao = null;

    public BaseResp insertWorkFlow(NewWorkFlowReq req)
    {
        BaseResp resp = new BaseResp();
        //参数校验（待补充）
        
        //每个人每次只能借一台，如果有未换的测试机，则不让借
        
        //在电子流表中新增一条记录
        WorkFlowDaoBean daoBean = new WorkFlowDaoBean();
        daoBean.setUserName(req.getUserName());
        daoBean.setWorkflowName(req.getWorkFlowName());
        daoBean.setEquipmentName(req.getEquipmentName());
        daoBean.setStartUseTime(System.currentTimeMillis());
        daoBean.setBackTime(0L);
        //0为流程处理中，1为流程已结束
        daoBean.setStatus(0);
        daoBean.setCreateTime(System.currentTimeMillis());
        workFlowDao.insertWorkFlow(daoBean);
        
        //更新用户所在组的可用机器状态，0表示可用；1表示已借出
        EquipmentDaoBean equipmentDaoBean = new EquipmentDaoBean();
        equipmentDaoBean.setEquipmentName(req.getEquipmentName());
        equipmentDaoBean.setGroupName(req.getGroupName());
        equipmentDaoBean.setStatus(1);
        equipmentDao.updateEquipmentStatus(equipmentDaoBean);
        
        return resp;
        
    }

    public GetWorkFlowResp getWorkflow(GetWorkFlowReq req)
    {
        GetWorkFlowResp resp = new GetWorkFlowResp();
        
        WorkFlowDaoBean daoParam = new WorkFlowDaoBean();
        daoParam.setStatus(req.getStatus());
        
        if (req.getUserRole() != null)
        {
            String[] roleList = req.getUserRole().split(",");
            for (int i = 0; i < roleList.length; i++)
            {
                if (!roleList[i].equals("0"))
                {
                    daoParam.setUserName(req.getUserName());
                }
            }
        }
        
        List<WorkFlowDaoBean> result = workFlowDao.getWorkFlow(daoParam);
        
        if (result != null && !result.isEmpty())
        {
            Collections.sort(result, new AscSortComparator());

            //对所有版本计划进行分页
            if (req.getPageSize() != 0)
            {
                resp.setTotalCount(result.size());
                
                int fromIndex = Math.min(req.getPageNum() * req.getPageSize(), result.size());
                int toIndex = Math.min(fromIndex + req.getPageSize(), result.size());
                
                result = result.subList(fromIndex, toIndex);
                resp.setWorkflowList(result);
            }
        }
        
        return resp;
    }
    
    public GetAvailableEquipmentResp getAvailableEquipment(GetWorkFlowReq req)
    {
        GetAvailableEquipmentResp resp = new GetAvailableEquipmentResp();

        EquipmentDaoBean daoBean = new EquipmentDaoBean();
        daoBean.setGroupName(req.getGroupName());
        daoBean.setStatus(0);
        List<EquipmentDaoBean> result = equipmentDao.getAvailableEquipment(daoBean);
        resp.setAvailableEquip(result);

        return resp;
    }
}
