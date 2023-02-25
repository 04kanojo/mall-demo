package com.kanojo.advice;

import com.kanojo.advice.exception.MyException;
import com.kanojo.util.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@Order(1)
@RestControllerAdvice
public class MyExceptionAdvice {

    @ExceptionHandler(MyException.class)
    public Result doMyException(MyException e) {
        log.error(e.getMessage());
        return new Result(e.getCode(), e.getMessage());
    }
}
