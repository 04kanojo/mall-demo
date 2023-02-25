package com.kanojo.controller.vo;

import lombok.Data;

@Data
public class CartVO {
    private Long cartId;

    private String goodsName;

    private String goodsInfo;

    private String goodsImage;

    private Integer goodsNum;

    private Double goodsPrice;
}
