package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;

@Data
public class Address {
    @TableId
    private Long addressId;

    private Long userId;

    private String userName;

    private String phone;

    private String province;

    private String city;

    private String region;

    private String detail;

    @TableLogic
    private Integer isDeleted;

    private Boolean isDefault;
}
