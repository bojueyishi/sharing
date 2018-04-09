package com.jup.sharing.restbean;

public class NewWorkFlowReq extends BaseUserReq
{
    private String workFlowName;

    private String equipmentName;
    
    public String getWorkFlowName()
    {
        return workFlowName;
    }
    
    public void setWorkFlowName(String workFlowName)
    {
        this.workFlowName = workFlowName;
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
