package com.jup.sharing.daobean;

public class ReleasePlanBean
{
    private String planNum;
    
    private String userName;
    
    private long createTime;
    
    private long modifyTime;
    
    private String requirement;

    private String develop;

    private String firsttest;

    private String secondtest;

    private String thirdtest;

    private String graystart;
    
    public String getRequirement()
    {
        return requirement;
    }
    
    public void setRequirement(String requirement)
    {
        this.requirement = requirement;
    }
    
    public String getDevelop()
    {
        return develop;
    }
    
    public void setDevelop(String develop)
    {
        this.develop = develop;
    }
    
    public String getFirsttest()
    {
        return firsttest;
    }
    
    public void setFirsttest(String firsttest)
    {
        this.firsttest = firsttest;
    }
    
    public String getSecondtest()
    {
        return secondtest;
    }
    
    public void setSecondtest(String secondtest)
    {
        this.secondtest = secondtest;
    }
    
    public String getThirdtest()
    {
        return thirdtest;
    }
    
    public void setThirdtest(String thirdtest)
    {
        this.thirdtest = thirdtest;
    }
    
    public String getGraystart()
    {
        return graystart;
    }
    
    public void setGraystart(String graystart)
    {
        this.graystart = graystart;
    }
    
    public String getPlanNum()
    {
        return planNum;
    }
    
    public void setPlanNum(String planNum)
    {
        this.planNum = planNum;
    }
    
    public String getUserName()
    {
        return userName;
    }
    
    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    
    public long getCreateTime()
    {
        return createTime;
    }
    
    public void setCreateTime(long createTime)
    {
        this.createTime = createTime;
    }
    
    public long getModifyTime()
    {
        return modifyTime;
    }
    
    public void setModifyTime(long modifyTime)
    {
        this.modifyTime = modifyTime;
    }

}
