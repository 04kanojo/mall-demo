package com.kanojo.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class Logs {
    @TableId
    private Long logId;

    private String addr;

    private String browser;

    private Integer isDeleted;

    public Logs(String addr, String browser) {
        this.addr = addr;
        this.browser = browser;
    }
}
