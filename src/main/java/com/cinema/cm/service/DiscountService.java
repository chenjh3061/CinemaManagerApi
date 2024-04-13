package com.cinema.cm.service;


import com.cinema.cm.domain.Discount;

import java.util.List;

/**
 * (Discount)表服务接口
 *
 * @author makejava
 * @since 2024-03-30 23:20:08
 */
public interface DiscountService {

    /**
     * 通过ID查询单条数据
     *
     * @param disId 主键
     * @return 实例对象
     */
    Discount queryById(Integer disId);


    /**
     * 新增数据
     *
     * @param discount 实例对象
     * @return 实例对象
     */
    Integer insert(Discount discount);

    /**
     * 修改数据
     *
     * @param discount 实例对象
     * @return 实例对象
     */
    Integer update(Discount discount);

    /**
     * 通过主键删除数据
     *
     * @param disId 主键
     * @return 是否成功
     */
    Integer delete(Integer disId);


    List<Discount> findAllDiscount();
}
