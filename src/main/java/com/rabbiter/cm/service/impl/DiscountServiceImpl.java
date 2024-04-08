package com.rabbiter.cm.service.impl;

import com.rabbiter.cm.domain.Discount;
import com.rabbiter.cm.mapper.DiscountMapper;
import com.rabbiter.cm.service.DiscountService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

/**
 * (Discount)表服务实现类
 *
 * @author makejava
 * @since 2024-03-30 23:20:08
 */
@Service("discountService")
public class DiscountServiceImpl implements DiscountService {
    @Resource
    private DiscountMapper discountMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param disId 主键
     * @return 实例对象
     */
    @Override
    public Discount queryById(Integer disId) {
        return discountMapper.queryById(disId);
    }

    @Override
    public Integer insert(Discount discount) {
        return discountMapper.insert(discount);
    }

    @Override
    public Integer update(Discount discount) {
        return discountMapper.update(discount);
    }

    @Override
    public Integer delete(Integer disId) {
        return discountMapper.delete(disId);
    }


    @Override
    public List<Discount> findAllDiscount() {
        return discountMapper.findAllDiscount();
    }



}
