package com.cinema.cm.mapper;

import com.cinema.cm.domain.Discount;

import java.util.List;

public interface DiscountMapper {

    List<Discount> findAllDiscount();

    Discount queryById(Integer disId);

    Integer insert(Discount discount);

    Integer update(Discount discount);

    Integer delete(Integer disId);



}
