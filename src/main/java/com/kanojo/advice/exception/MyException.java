package com.kanojo.advice.exception;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class MyException extends Exception {
    private Integer code;

    public MyException(Integer code, String message) {
        super(message);
        this.code = code;
    }
}
