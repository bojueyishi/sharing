package com.jup.sharing.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jup.sharing.restbean.BaseResp;
import com.jup.sharing.restbean.GetAvailableEquipmentResp;
import com.jup.sharing.restbean.GetWorkFlowReq;
import com.jup.sharing.restbean.GetWorkFlowResp;
import com.jup.sharing.restbean.NewWorkFlowReq;
import com.jup.sharing.service.WorkFlowService;

@Controller
public class WorkFlowController
{
    @Resource(name = "workFlowService")
    WorkFlowService workFlowService = null;

    @RequestMapping(value = "/newWorkflow", method = RequestMethod.POST)
    @ResponseBody
    public BaseResp newWorkflow(@RequestBody NewWorkFlowReq req)
    {
        return workFlowService.insertWorkFlow(req);
    }
    
    @RequestMapping(value = "/getWorkflow", method = RequestMethod.POST)
    @ResponseBody
    public GetWorkFlowResp getWorkflow(@RequestBody GetWorkFlowReq req)
    {
        return workFlowService.getWorkflow(req);
    }
    
    @RequestMapping(value = "/getAvailableEquipment", method = RequestMethod.POST)
    @ResponseBody
    public GetAvailableEquipmentResp getAvailableEquipment(@RequestBody GetWorkFlowReq req)
    {
        return workFlowService.getAvailableEquipment(req);
    }
}
