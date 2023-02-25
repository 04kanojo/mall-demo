package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.controller.param.UpdateCartParam;
import com.kanojo.controller.vo.CartVO;
import com.kanojo.pojo.Cart;
import com.kanojo.pojo.User;
import com.kanojo.service.CartService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/carts")
public class CartController {
    @Autowired
    private CartService cartService;

    @PostMapping("/addCart")
    public Result addCart(@TokenToUser User user, @RequestBody Cart cart) {
        cart.setUserId(user.getUserId());
        boolean flag = cartService.addCart(cart);
        return new Result(flag ? 200 : 666, flag ? "添加成功" : "添加失败");
    }

    @DeleteMapping("/{cartId}")
    public Result delete(@TokenToUser User user, @PathVariable Long cartId) {
        boolean flag = cartService.delete(cartId);
        return new Result(flag ? 200 : 666, flag ? "删除成功" : "删除失败");
    }

    @GetMapping
    public Result getCart(@TokenToUser User user) {
        List<CartVO> list = cartService.getCart(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "暂无数据");
    }

    @PutMapping
    public Result update(@TokenToUser User user, @RequestBody UpdateCartParam param) {
        boolean flag = cartService.updateNum(param);
        return new Result(flag ? 200 : 666, flag ? "更新成功" : "更新失败");
    }

    @DeleteMapping
    public Result deleteAll(@TokenToUser User user) {
        boolean flag = cartService.deleteAll(user.getUserId());
        return new Result(flag ? 200 : 666, flag ? "删除成功" : "删除失败");
    }
}
