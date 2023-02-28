package com.kanojo.controller.vo;

import lombok.Data;

@Data
public class AddressVO {
    private String id;

    private String name;

    private String tel;

    private String address;

    private Boolean isDefault;
}
