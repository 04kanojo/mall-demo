package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class fenLei {
    @TableId
    private Long id;

    private String name;
}
