package com.rabbiter.cm.controller;

import com.rabbiter.cm.common.response.ResponseResult;
import com.rabbiter.cm.domain.Discount;
import com.rabbiter.cm.service.DiscountService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Discount)表控制层
 *
 * @author makejava
 * @since 2024-03-30 23:20:01
 */
@RestController
public class DiscountController extends BaseController{
    /**
     * 服务对象
     */
    @Resource
    private DiscountService discountService;

    @GetMapping("/discount")
    public ResponseResult findAllDiscount() {
        return getResult(this.discountService.findAllDiscount());
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/discount/{id}")
    public ResponseResult queryById(@PathVariable("id") Integer id) {
        return getResult(this.discountService.queryById(id));
    }

    @PostMapping("/discount")
    public ResponseResult add(@RequestBody Discount discount) {
        return getResult(this.discountService.insert(discount));
    }

    /**
     * 更新数据
     *
     * @param discount 实体
     * @return 更新结果
     */
    @PutMapping("/discount")
    public ResponseResult updateDiscount(@RequestBody Discount discount) {
//        System.out.println(discount.getDisId());
//        System.out.println(discount.getDisName());
//        System.out.println(discount.getDisState());
//        System.out.println(discount.getDisOff());
        return getResult(this.discountService.update(discount));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping("/discount/{id}")
    public ResponseResult delete(@PathVariable("id") Integer id) {
        return getResult(this.discountService.delete(id));
    }

}

