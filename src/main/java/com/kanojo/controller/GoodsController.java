package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.controller.param.ZheKouParam;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.Logs;
import com.kanojo.pojo.User;
import com.kanojo.pojo.Zuji;
import com.kanojo.service.GoodsService;
import com.kanojo.service.LogsService;
import com.kanojo.service.ZujiService;
import com.kanojo.util.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@Slf4j
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    @Autowired
    private LogsService logsService;

    @Autowired
    private ZujiService zujiService;

    @GetMapping("/getGoods")
    public Result getGoods(HttpServletRequest request, PageParam page) {
        List<Goods> list = goodsService.getGoods(page);
        String addr = request.getRemoteAddr();
        String browser = request.getHeader("user-agent");
        log.info(addr + ":" + browser);
        logsService.add(new Logs(addr, browser));
        boolean flag = list != null;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "暂无数据");
    }

    @GetMapping("/getById/{goodsId}")
    public Result getById(@TokenToUser({"admin", "user"}) User user, @PathVariable Long goodsId) {
        Goods goods = goodsService.getById(goodsId);
        Long userId = user.getUserId();
        Zuji zuji = new Zuji(userId, goodsId);
        zujiService.add(zuji);
        boolean flag = goods != null;
        return new Result(flag ? 200 : 666, goods, flag ? "查询成功" : "暂无数据");
    }

    @GetMapping("/conditionQuery")
    public Result conditionQuery(@RequestBody ConditionParam conditionParam) {
        List<Goods> list = goodsService.conditionQuery(conditionParam);
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "暂无数据");
    }

    @DeleteMapping("/{goodsId}")
    private Result deleteGoods(@TokenToUser("admin") User user, @PathVariable Long goodsId) {
        boolean flag = goodsService.deleteGoods(goodsId);
        return new Result(flag ? 200 : 666, flag ? "下架成功" : "下架失败");
    }

    @PostMapping
    private Result addGoods(@TokenToUser("admin") User user, @RequestBody Goods goods) {
        boolean flag = goodsService.add(goods);
        return new Result(flag ? 200 : 666, flag ? "添加成功" : "添加失败");
    }

    @PutMapping
    private Result update(@TokenToUser("admin") User user, @RequestBody Goods goods) {
        boolean flag = goodsService.update(goods);
        return new Result(flag ? 200 : 666, flag ? "更改成功" : "更改失败");
    }

    @GetMapping("/orderByPrice")
    private Result orderByPrice() {
        List<Goods> list = goodsService.orderByPrice();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "获取失败");
    }

    @GetMapping("/orderByNew")
    private Result orderByNew() {
        List<Goods> list = goodsService.orderByNew();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "获取失败");
    }

    @PostMapping("/LanGet")
    private Result LanGet(@RequestBody PageParam param) {
        List<Goods> list = goodsService.LanGet(param);
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "" : "");
    }

    @PutMapping("/updateGoodsZheKou")
    private Result updateGoodsZheKou(@TokenToUser("admin") User user, @RequestBody ZheKouParam zheKouParam) {
        boolean flag = goodsService.updateGoodsZheKou(zheKouParam);
        return new Result(flag ? 200 : 666, "");
    }

    @GetMapping("/getFlGoods/{flId}")
    private Result getFlGoods(@PathVariable Long flId) {
        List<Goods> list = goodsService.getFlGoods(flId);
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "" : "");
    }
}
