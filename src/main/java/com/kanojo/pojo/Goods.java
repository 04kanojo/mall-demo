package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;

@Data
public class Goods {
    @TableId
    private Long goodsId;

    private String goodsName;

    private String goodsInfo;

    private String goodsImage;

    private String GoodsNum;

    @TableLogic
    private Integer isDeleted;

    private Double goodsPrice;

    private Integer isNew;
}
