package com.kanojo.controller;

import com.kanojo.pojo.Carousel;
import com.kanojo.service.CarouselService;
import com.kanojo.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
