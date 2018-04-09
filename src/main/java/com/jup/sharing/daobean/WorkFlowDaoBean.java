package com.jup.sharing.daobean;

public class WorkFlowDaoBean
{
    private String userName;
    
    private String workflowName;
    
    private String equipmentName;
    
    private long startUseTime;
    
    private long backTime;
    
    private int status;
    
    private long createTime;
    
    public int getStatus()
    {
        return status;
    }
    
    public void setStatus(int status)
    {
        this.status = status;
    }
    
    public String getUserName()
    {
        return userName;
    }

    public void setUserName(String userName)
    {
        this.userName = userName;
    }

    public String getWorkflowName()
    {
        return workflowName;
    }

    public void setWorkflowName(String workflowName)
    {
        this.workflowName = workflowName;
    }

    public long getStartUseTime()
    {
        return startUseTime;
    }

    public void setStartUseTime(long startUseTime)
    {
        this.startUseTime = startUseTime;
    }

    public long getBackTime()
    {
        return backTime;
    }

    public void setBackTime(long backTime)
    {
        this.backTime = backTime;
    }

    public long getCreateTime()
    {
        return createTime;
    }

    public void setCreateTime(long createTime)
    {
        this.createTime = createTime;
    }
    
    public String getEquipmentName()
    {
        return equipmentName;
    }
    
    public void setEquipmentName(String equipmentName)
    {
        this.equipmentName = equipmentName;
    }
    
}