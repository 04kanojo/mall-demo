package com.kanojo.controller.param;

import lombok.Data;

import java.util.List;

@Data
public class OrderParam {
    private Long userId;

    private Long addressId;

    private List<Long> goodsList;
}
