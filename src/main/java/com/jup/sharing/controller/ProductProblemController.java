package com.jup.sharing.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jup.sharing.restbean.GetProductProblemResp;
import com.jup.sharing.restbean.ProductProblemReq;
import com.jup.sharing.service.ProductProblemService;

@Controller
public class ProductProblemController
{
    @Resource(name = "productProblemService")
    ProductProblemService productProblemService = null;
    
    @RequestMapping(value = "/getProblemList", method = RequestMethod.POST)
    @ResponseBody
    public GetProductProblemResp getWorkflow(@RequestBody ProductProblemReq req)
    {
        return productProblemService.getProblemList(req);
    }

}
