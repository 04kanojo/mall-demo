package com.kanojo.controller.param;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class ZheKouParam {
    private Long goodsId;
    private Double zheKouLv;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date zheKouTimeStart;

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date zheKouTimeStop;
}
