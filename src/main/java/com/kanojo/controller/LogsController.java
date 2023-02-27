package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.Logs;
import com.kanojo.pojo.User;
import com.kanojo.service.LogsService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/logs")
public class LogsController {

    @Autowired
    private LogsService logsService;

    @GetMapping
    private Result getAllLogs(@TokenToUser("admin") User user) {
        List<Logs> logs = logsService.getAllLogs();
        boolean flag = logs.size() != 0;
        return new Result(flag ? 200 : 666, logs, flag ? "" : "");
    }
}
