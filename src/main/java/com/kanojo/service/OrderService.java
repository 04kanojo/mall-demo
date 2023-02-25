package com.kanojo.service;

import com.kanojo.controller.param.OrderParam;
import com.kanojo.pojo.Order;

import java.util.List;

public interface OrderService {
    Long addOrder(OrderParam orderParam);

    List<Order> getAllOrder(Long userId);

    boolean deleteOrder(Long orderId);

    void updateTotalPrice(Long orderId, Double result);

    boolean pay(Long orderId);
}
