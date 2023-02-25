package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.OrderParam;
import com.kanojo.pojo.Order;
import com.kanojo.pojo.OrderDetail;
import com.kanojo.pojo.User;
import com.kanojo.service.OrderDetailService;
import com.kanojo.service.OrderService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/orders")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderDetailService orderDetailService;

    @PostMapping("/addOrder")
    public Result addOrder(@TokenToUser User user, @RequestBody OrderParam orderParam) {
        orderParam.setUserId(user.getUserId());
        Long orderId = orderService.addOrder(orderParam);
        boolean flag = orderId != null;
        return new Result(flag ? 200 : 666, orderId, flag ? "添加成功" : "添加失败");
    }

    @GetMapping("/getAllOrder")
    private Result getAllOrder(@TokenToUser User user) {
        List<Order> list = orderService.getAllOrder(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "获取失败");
    }

    @DeleteMapping("/deleteOrder/{orderId}")
    private Result deleteOrder(@PathVariable Long orderId) {
        boolean flag = orderService.deleteOrder(orderId);
        return new Result(flag ? 200 : 666, flag ? "删除成功" : "删除失败");
    }

    @PostMapping("/addOrderDetail")
    private Result addOrderDetail(@TokenToUser User user, @RequestBody List<OrderDetail> orderDetails) {
        for (OrderDetail orderDetail : orderDetails) {
            orderDetail.setUserId(user.getUserId());
        }
        boolean flag = orderDetailService.addOrderDetail(orderDetails);
        return new Result(flag ? 200 : 666, flag ? "添加成功" : "添加失败");
    }

    @GetMapping("/getOrderDetail")
    private Result getOrderDetail(@TokenToUser User user) {
        List<OrderDetail> list = orderDetailService.getOrderDetail(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "获取失败");
    }

    @PutMapping("/{orderId}")
    private Result pay(@TokenToUser User user, @PathVariable Long orderId) {
        boolean flag = orderService.pay(orderId);
        return new Result(flag ? 200 : 666, flag ? "支付成功" : "支付失败");
    }
}
