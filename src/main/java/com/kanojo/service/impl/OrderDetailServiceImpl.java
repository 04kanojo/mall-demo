package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kanojo.mapper.OrderDetailMapper;
import com.kanojo.pojo.OrderDetail;
import com.kanojo.service.OrderDetailService;
import com.kanojo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
//@Transactional(rollbackFor = {RuntimeException.class, SQLException.class})
public class OrderDetailServiceImpl implements OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private OrderService orderService;

    @Override
    public boolean addOrderDetail(List<OrderDetail> orderDetails) {
        double result = 0;
        if (orderDetails.size() != 0) {

            for (OrderDetail orderDetail : orderDetails) {
                result += orderDetail.getBuyNum() * orderDetail.getBuyPrice();
                orderDetailMapper.insert(orderDetail);
            }
        }
        orderService.updateTotalPrice(orderDetails.get(0).getOrderId(), result);
        return true;
    }

    @Override
    public List<OrderDetail> getOrderDetail(Long userId) {
        LambdaQueryWrapper<OrderDetail> lqw = new LambdaQueryWrapper<>();
        lqw.eq(OrderDetail::getUserId, userId);
        return orderDetailMapper.selectList(lqw);
    }
}
