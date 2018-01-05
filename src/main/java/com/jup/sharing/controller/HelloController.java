package com.jup.sharing.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jup.sharing.daobean.UserInfoBean;
import com.jup.sharing.service.UserInfoService;
import com.jup.sharing.util.SessionUtil;

@Controller
public class HelloController
{
    @Resource(name = "userInfoService")
    UserInfoService userInfoService = null;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(HttpServletRequest request)
    {
        if (SessionUtil.sessionIsValid(request))
        {
            return "redirect:/home.action";
        }
        else
        {
            return "login";
        }
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home(ModelAndView modelAndView, HttpServletRequest request)
    {
        modelAndView.setViewName("home");
        return modelAndView;
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(ModelAndView modelAndView, HttpServletRequest request,
        @RequestParam("username") String username, @RequestParam("password") String password)
    {
        if (SessionUtil.sessionIsValid(request))
        {
            //modelAndView.setViewName("home");
            return "redirect:/home.action";
        }
        else
        {
            UserInfoBean userInfo = userInfoService.getUserInfo(username);
            if (userInfo != null)
            {
                //如果不为空，则表示数据库有值，登录成功：跳转到主页，并设置session
                HttpSession session = request.getSession();
                session.setAttribute("username", "haha");
                session.setMaxInactiveInterval(5);
                /*modelAndView.setViewName("home");
                modelAndView.addObject("msg", "login success!");*/
                return "redirect:/home.action";
            }
            else
            {
                /*modelAndView.setViewName("login");
                modelAndView.addObject("msg", "用户名或密码错误！");*/
                return "forward:/login.action";
            }
        }
    }
}
