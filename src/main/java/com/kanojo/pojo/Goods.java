package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class Goods {
    @TableId
    private Long goodsId;

    private String goodsName;

    private String goodsInfo;

    private String goodsImage;

    private Integer GoodsNum;

    @TableLogic
    private Integer isDeleted;

    private Double goodsPrice;

    private Integer isNew;

    private Double zheKouLv;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date zheKouTimeStart;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date zheKouTimeStop;

    private Long flId;
}
