package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
public class QianBao {
    @TableId
    private Long userId;

    private Long totalMoney;

    private Long totalChongZhi;

    private Long totalXiaoFei;
}
