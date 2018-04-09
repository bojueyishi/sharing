package com.jup.sharing.dao;

import java.util.List;

import com.jup.sharing.daobean.EquipmentDaoBean;

public interface EquipmentDao
{
    List<EquipmentDaoBean> getAvailableEquipment(EquipmentDaoBean daoBean);
    
    void updateEquipmentStatus(EquipmentDaoBean daoBean);
}
