package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.User;
import com.kanojo.service.GoodsService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    @GetMapping("/getGoods")
    public Result getGoods(PageParam page) {
        List<Goods> list = goodsService.getGoods(page);
        boolean flag = list != null;
        return new Result(flag ? 200 : 666, list, flag ? "查询成功" : "暂无数据");
    }

    @GetMapping("/getById/{goodsId}")
    public Result getById(@PathVariable Long goodsId) {
        Goods goods = goodsService.getById(goodsId);
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
}
