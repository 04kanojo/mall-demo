package com.kanojo.pojo;


import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class UserCollection {
    @TableId
    private Long collectionId;

    private Long userId;

    private Long goodsId;

    private Integer status;
}
