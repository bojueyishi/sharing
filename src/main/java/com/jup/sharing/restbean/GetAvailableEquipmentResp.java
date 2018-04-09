package com.jup.sharing.restbean;

import java.util.List;

import com.jup.sharing.daobean.EquipmentDaoBean;

public class GetAvailableEquipmentResp extends BaseResp
{
    List<EquipmentDaoBean> availableEquip = null;

    public List<EquipmentDaoBean> getAvailableEquip()
    {
        return availableEquip;
    }

    public void setAvailableEquip(List<EquipmentDaoBean> availableEquip)
    {
        this.availableEquip = availableEquip;
    }
}
