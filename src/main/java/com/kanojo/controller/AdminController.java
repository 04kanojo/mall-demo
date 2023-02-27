package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.User;
import com.kanojo.service.UserService;
import com.kanojo.util.Result;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private UserService userService;

    @ApiOperation("获取vip账户")
    @PostMapping("/getVip")
    private Result getVip(@TokenToUser("admin") User user) {
        List<User> list = userService.getVip();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "暂无数据");
    }

    @PostMapping("/resetPassword/{userId}")
    private Result resetPassword(@TokenToUser("admin") User user, @PathVariable Long userId) {
        boolean flag = userService.resetPassword(userId);
        return new Result(flag ? 200 : 666, flag ? "重置成功" : "重置失败");
    }

    @PostMapping("/getAllUser")
    private Result getAllUser(@TokenToUser("admin") User user) {
        List<User> list = userService.getAllUser();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "查询失败");
    }

    @PostMapping("/logout/{userId}")
    private Result logout(@TokenToUser("admin") User user, @PathVariable Long userId) {
        boolean flag = userService.logout(userId);
        return new Result(flag ? 200 : 666, flag ? "注销成功" : "注销失败");
    }

    @DeleteMapping("/{userId}")
    private Result delete(@TokenToUser("admin") User user, @PathVariable Long userId) {
        boolean flag = userService.delete(userId);
        return new Result(flag ? 200 : 666, flag ? "ok" : "err");
    }
}
