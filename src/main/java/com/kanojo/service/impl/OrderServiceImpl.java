package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.kanojo.controller.param.OrderParam;
import com.kanojo.mapper.OrderDetailMapper;
import com.kanojo.mapper.OrderMapper;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.Order;
import com.kanojo.pojo.OrderDetail;
import com.kanojo.service.GoodsService;
import com.kanojo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Locale;
import java.util.UUID;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private GoodsService goodsService;

    @Override
    public Long addOrder(OrderParam orderParam) {
        Order order = new Order();
        order.setOrderNo(UUID.randomUUID().toString().replace("-", "").toLowerCase(Locale.ROOT));
        order.setUserId(orderParam.getUserId());
        order.setAddressId(orderParam.getAddressId());
        boolean flag = orderMapper.insert(order) > 0;
        if (flag) {
            List<Long> goodsList = orderParam.getGoodsList();
            double result = 0D;
            for (Long goodsId : goodsList) {
                Goods goods = goodsService.getById(goodsId);
                OrderDetail orderDetail = new OrderDetail();

                orderDetail.setOrderId(order.getOrderId());
                orderDetail.setUserId(orderParam.getUserId());
                orderDetail.setBuyNum(goods.getGoodsNum());
                orderDetail.setGoodsId(goods.getGoodsId());
                orderDetail.setGoodsImage(goods.getGoodsImage());
                orderDetail.setGoodsName(goods.getGoodsName());
                orderDetail.setBuyPrice(goods.getGoodsPrice());

                orderDetailMapper.insert(orderDetail);
                result += orderDetail.getBuyNum() * orderDetail.getBuyPrice();
                updateTotalPrice(order.getOrderId(), result);
            }
            return order.getOrderId();
        }
        return null;
    }

    @Override
    public List<Order> getAllOrder(Long userId) {
        LambdaQueryWrapper<Order> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Order::getUserId, userId);
        return orderMapper.selectList(lqw);
    }

    @Override
    public boolean deleteOrder(Long orderId) {
        return orderMapper.deleteById(orderId) > 0;
    }

    @Override
    public void updateTotalPrice(Long orderId, Double result) {
        LambdaUpdateWrapper<Order> luw = new LambdaUpdateWrapper<>();
        luw.eq(Order::getOrderId, orderId).set(Order::getTotalPrice, result);
        orderMapper.update(null, luw);
    }

    @Override
    public boolean pay(Long orderId) {
        LambdaUpdateWrapper<Order> luw = new LambdaUpdateWrapper<>();
        luw.eq(Order::getOrderId, orderId).set(Order::getPayStatus, 1);
        return orderMapper.update(null, luw) > 0;
    }
}
