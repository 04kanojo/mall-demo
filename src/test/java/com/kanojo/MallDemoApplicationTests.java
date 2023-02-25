package com.kanojo;

import com.kanojo.mapper.OrderMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MallDemoApplicationTests {

    @Autowired
    private OrderMapper orderMapper;

    @Test
    void contextLoads() {
        int x = 5;
        int y = 8;
        int i = x | y;
        System.out.println(i);
        System.out.println();
    }
}
