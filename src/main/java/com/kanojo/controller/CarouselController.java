package com.kanojo.controller;

import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.Carousel;
import com.kanojo.pojo.User;
import com.kanojo.service.CarouselService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/carousels")
public class CarouselController {
    @Autowired
    private CarouselService carouselService;

    @GetMapping("/get")
    public Result get() {
        List<Carousel> list = carouselService.get();
        boolean flag = list.size() != 0;
        return new Result(flag ? 200 : 666, list, flag ? "e" : "eee");
    }

    @PostMapping
    private Result add(@TokenToUser("admin") User user, @RequestBody Carousel carousel) {
        boolean flag = carouselService.add(carousel);
        return new Result(flag ? 200 : 666, flag ? "" : "");
    }

    @DeleteMapping("/{carouselId}")
    private Result delete(@TokenToUser("admin") User user, @PathVariable Long carouselId) {
        boolean flag = carouselService.delete(carouselId);
        return new Result(flag ? 200 : 666, flag ? "" : "");
    }

    @PostMapping("/updateShunxu")
    private Result updateShunxu(@TokenToUser("admin") User user, @RequestBody List<Carousel> carousels) {
        boolean flag = carouselService.updateShunxu(carousels);
        return new Result(flag ? 200 : 666, flag ? "" : "");
    }
}
