package com.jup.sharing.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jup.sharing.service.UserInfoService;

@Controller
public class HelloController
{
    @Resource(name = "userInfoService")
    UserInfoService userInfoService = null;
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String index(HttpServletRequest request, RedirectAttributes model)
    {
        if (SecurityUtils.getSubject().getSession().getAttribute("token") != null)
        {
            //return "redirect:/home.action";
            return "home";
        }
        else
        {
            return "login";
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(ModelAndView modelAndView, HttpServletRequest request,
        @RequestParam("username") String username, @RequestParam("password") String password, Model model,
        RedirectAttributes attr)
    {
        String msg = null;
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(true);
        Subject subject = SecurityUtils.getSubject();
        
        try
        {
            subject.login(token);
            if (subject.isAuthenticated())
            {
                Session session = subject.getSession();
                session.setAttribute("token", token);
                session.setTimeout(100000);
                return "redirect:/home.action";
            }
            else
            {
                return "login";
            }
        }
        catch (IncorrectCredentialsException e)
        {
            msg = "用户名或密码错误!";
            model.addAttribute("message", msg);
        }
        catch (ExcessiveAttemptsException e)
        {
            msg = "登录失败次数过多!";
            model.addAttribute("message", msg);
        }
        catch (LockedAccountException e)
        {
            msg = "帐号已被锁定!";
            model.addAttribute("message", msg);
        }
        catch (DisabledAccountException e)
        {
            msg = "帐号已被禁用!";
            model.addAttribute("message", msg);
        }
        catch (ExpiredCredentialsException e)
        {
            msg = "帐号已过期!";
            model.addAttribute("message", msg);
        }
        catch (UnknownAccountException e)
        {
            msg = "用户名或密码错误!";
            model.addAttribute("message", msg);
        }
        catch (UnauthorizedException e)
        {
            msg = "您没有得到相应的授权!" + e.getMessage();
            model.addAttribute("message", msg);
        }
        
        return "login";
    }
    
    /* @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout(ModelAndView modelAndView, HttpServletRequest request,
        @RequestParam("username") String username, @RequestParam("password") String password, Model model,
        RedirectAttributes attr)*/
    
}
