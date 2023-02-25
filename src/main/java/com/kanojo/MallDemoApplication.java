package com.kanojo;

import com.alicp.jetcache.anno.config.EnableCreateCacheAnnotation;
import com.alicp.jetcache.anno.config.EnableMethodCache;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.kanojo.mapper")
@EnableTransactionManagement
@EnableCreateCacheAnnotation
//开启方法缓存(必须和上面配合使用)
@EnableMethodCache(basePackages = "com.kanojo")
public class MallDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(MallDemoApplication.class, args);
    }
}
