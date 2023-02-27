package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.LoginParam;
import com.kanojo.controller.vo.CollectionVO;
import com.kanojo.pojo.User;
import com.kanojo.pojo.UserCollection;
import com.kanojo.service.QianBaoService;
import com.kanojo.service.UserService;
import com.kanojo.util.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

@Slf4j
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private QianBaoService qianBaoService;

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public Result getLoginUser(@RequestBody LoginParam loginParam) {
        String token = userService.login(loginParam);
        boolean flag = token != null;
        return new Result(flag ? 200 : 666, token, flag ? "登录成功" : "用户名或密码错误");
    }

    @PostMapping("/saveCollection")
    public Result saveCollection(@TokenToUser User user, @RequestBody UserCollection userCollection) {
        userCollection.setUserId(user.getUserId());
        boolean flag = userService.saveCollection(userCollection);
        return new Result(flag ? 200 : 666, flag ? "操作成功" : "操作失败");
    }

    @PutMapping("/updateCollectionStatus/{userCollectionId}")
    public Result updateCollectionStatus(@TokenToUser User user, @PathVariable Long userCollectionId) {
        boolean flag = userService.updateCollectionStatus(userCollectionId);
        return new Result(flag ? 200 : 666, flag ? "取消成功" : "取消失败");
    }

    @GetMapping("/getCollection")
    public Result getCollection(@TokenToUser User user) {
        List<CollectionVO> list = userService.getCollection(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "暂无数据");
    }

    @PostMapping("/register")
    public Result register(@RequestBody User user) {
        boolean flag = userService.register(user);
        qianBaoService.add(user.getUserId());
        return new Result(flag ? 200 : 666, flag ? "注册成功" : "注册失败");
    }

    @PostMapping("/upload")
    public Result upload(@TokenToUser({"user", "admin"}) User user, @RequestParam("file") MultipartFile multipartFile) throws IOException {
        //获取文件名字(有后缀名)
        String fileSuffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
        String fileName =
                UUID.randomUUID()
                        .toString()
                        .replace("-", "")
                        .toLowerCase(Locale.ROOT) +
                        fileSuffix;
        multipartFile.transferTo(new File("D:/Temp/" + fileName));
        //返回的映射路径
        String path = "/picture/" + fileName;
        boolean flag = userService.upload(path, user.getUserId());
        return new Result(flag ? 200 : 666, path, "fuck");
    }

    @PutMapping("/update")
    private Result update(HttpServletRequest request, @TokenToUser User user, @RequestBody User user1) {
        String token = request.getHeader("token");
        boolean flag = userService.update(token, user.getUserId(), user1);
        return new Result(flag ? 200 : 666, flag ? "" : "");
    }
}
