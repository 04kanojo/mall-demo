package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.Address;
import com.kanojo.pojo.User;
import com.kanojo.service.AddressService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @PostMapping("/addAddress")
    public Result addAddress(@TokenToUser User user, @RequestBody Address address) {
        address.setUserId(user.getUserId());
        boolean flag = addressService.addAddress(address);
        return new Result(flag ? 200 : 500, flag ? "添加成功" : "添加失败");
    }

    @GetMapping("/getAddress")
    public Result getAddress(@TokenToUser User user) {
        List<Address> list = addressService.getAddress(user.getUserId());
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "获取成功" : "获取失败");
    }

    @DeleteMapping("/{addressId}")
    public Result delete(@TokenToUser User user, @PathVariable Long addressId) {
        boolean flag = addressService.delete(addressId);
        return new Result(flag ? 200 : 666, flag ? "删除成功" : "删除失败");
    }
}
