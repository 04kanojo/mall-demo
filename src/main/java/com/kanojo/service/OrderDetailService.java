package com.kanojo.service;

import com.kanojo.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    boolean addOrderDetail(List<OrderDetail> orderDetails);

    List<OrderDetail> getOrderDetail(Long userId);
}
