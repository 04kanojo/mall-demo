package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class OrderDetail {

    @TableId
    private Long orderDetailId;

    private Long orderId;

    private Long goodsId;

    private Long userId;

    private Integer buyNum;

    private Double buyPrice;

    private String goodsName;

    private String goodsImage;
}
