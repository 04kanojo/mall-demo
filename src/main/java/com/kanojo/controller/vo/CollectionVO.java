package com.kanojo.controller.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CollectionVO {
    private Long collectionId;

    private Long goodsId;

    private String goodsName;

    private String goodsInfo;

    private String goodsImage;

    private String GoodsNum;
}
