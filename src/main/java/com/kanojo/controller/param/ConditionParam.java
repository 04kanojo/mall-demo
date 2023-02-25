package com.kanojo.controller.param;

import lombok.Data;

@Data
public class ConditionParam {
    private String goodsName;

    private Double maxPrice;

    private Double minPrice;
}
