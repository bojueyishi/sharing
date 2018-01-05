package com.jup.sharing.util;

import javax.servlet.http.HttpServletRequest;

public abstract class SessionUtil
{
    
    public static boolean sessionIsValid(HttpServletRequest request)
    {
        if (request.getSession().getAttribute("username") != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
