package com.jup.sharing.restbean;

import com.jup.sharing.Constants;

public class BaseResp
{
    
    private int resultCode = Constants.SUCCESS;
    
    private String resultDesc;
    
    public int getResultCode()
    {
        return resultCode;
    }
    
    public void setResultCode(int resultCode)
    {
        this.resultCode = resultCode;
    }
    
    public String getResultDesc()
    {
        return resultDesc;
    }
    
    public void setResultDesc(String resultDesc)
    {
        this.resultDesc = resultDesc;
    }

}
