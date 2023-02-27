package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.User;
import com.kanojo.service.ZujiService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/zuji")
public class ZujiController {


    @Autowired
    private ZujiService zujiService;

    @GetMapping
    private Result get(@TokenToUser({"admin", "user"}) User user) {
        List<Goods> list = zujiService.get(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "" : "");
    }

    @DeleteMapping
    private Result delete() {
        boolean flag = zujiService.delete();
        return new Result(flag ? 200 : 666, flag ? "" : "");
    }
}
