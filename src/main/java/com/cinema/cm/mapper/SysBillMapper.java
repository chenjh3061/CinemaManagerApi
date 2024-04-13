package com.cinema.cm.mapper;

import com.cinema.cm.domain.SysBill;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysBillMapper {

    List<SysBill> findAllBills(SysBill sysBill);

    SysBill findBillById(Long id);

    int addBill(SysBill sysBill);

    int updateBill(SysBill sysBill);

    int deleteBill(Long id);

    List<SysBill> findTimeoutBill();

    int repay(Long billId);
}
