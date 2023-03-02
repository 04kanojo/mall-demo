package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.QianBaoParam;
import com.kanojo.pojo.QianBao;
import com.kanojo.pojo.User;
import com.kanojo.service.QianBaoService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/qianBao")
public class QianBaoController {
    @Autowired
    private QianBaoService qianBaoService;

    @PostMapping
    private Result update(@TokenToUser({"user", "admin"}) User user, @RequestBody QianBaoParam qianBaoParam) {
        qianBaoParam.setUserId(user.getUserId());
        boolean flag = qianBaoService.update(qianBaoParam);
        return new Result(flag ? 200 : 500, flag ? "" : "");
    }

    @GetMapping
    private Result get(@TokenToUser({"user", "admin"}) User user) {
        List<QianBao> list = qianBaoService.get(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(777, list, "");
    }
}
