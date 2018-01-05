package com.jup.sharing.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jup.sharing.restbean.BaseResp;
import com.jup.sharing.restbean.DeleRelePlanListReq;
import com.jup.sharing.restbean.GetRelePlanDetailResp;
import com.jup.sharing.restbean.GetRelePlanReq;
import com.jup.sharing.restbean.GetRelePlanResp;
import com.jup.sharing.service.RelePlanService;

@Controller
public class ReleasePlanController
{
    @Resource(name = "relePlanService")
    RelePlanService relePlanService = null;

    @RequestMapping(value = "/getRelePlanList", method = RequestMethod.POST)
    @ResponseBody
    public GetRelePlanResp getRelePlanList(@RequestBody GetRelePlanReq req)
    {
        return relePlanService.getRelePlanList(req);
    }

    @RequestMapping(value = "/getRelePlanDetial", method = RequestMethod.POST)
    @ResponseBody
    public GetRelePlanDetailResp getRelePlanDetial(@RequestBody GetRelePlanReq req)
    {
        return relePlanService.getRelePlanDetial(req);
    }

    @RequestMapping(value = "/deleteRelePlan", method = RequestMethod.POST)
    @ResponseBody
    public BaseResp deleteRelePlan(@RequestBody GetRelePlanReq req)
    {
        return relePlanService.deleteRelePlan(req);
    }

    @RequestMapping(value = "/deleteRelePlanList", method = RequestMethod.POST)
    @ResponseBody
    public BaseResp deleteRelePlanList(@RequestBody DeleRelePlanListReq req)
    {
        return relePlanService.deleteRelePlanList(req);
    }

}
