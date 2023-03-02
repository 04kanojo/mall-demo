package com.kanojo.controller;

import com.kanojo.pojo.fenLei;
import com.kanojo.service.FlService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/fl")
public class FlController {

    @Autowired
    private FlService flService;

    @GetMapping("/getFlName")
    private Result getFlName() {
        List<fenLei> list = flService.getFlName();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "" : "");
    }
}
