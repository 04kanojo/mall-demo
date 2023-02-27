package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Zuji {

    @TableId
    private Long zujiId;

    private Long userId;

    private Long goodsId;

    public Zuji(Long userId, Long goodsId) {
        this.userId = userId;
        this.goodsId = goodsId;
    }
}
