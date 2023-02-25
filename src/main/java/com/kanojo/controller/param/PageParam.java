package com.kanojo.controller.param;

import lombok.Data;

@Data
public class PageParam {
    //当前页码
    private Integer page;
    //每页条数
    private Integer limit;
}
