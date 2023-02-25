package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Carousel {
    @TableId
    private Long carouselId;

    private String url;
}
