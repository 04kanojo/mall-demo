package com.kanojo.controller.param;

import lombok.Data;

@Data
public class UpdateCartParam {
    private Long cartId;

    private Integer goodsNum;
}
