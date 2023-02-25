package com.kanojo.config;

import com.kanojo.config.handler.TokenToUserArgumentResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.CacheControl;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;
import java.util.concurrent.TimeUnit;

@Configuration
@ComponentScan({"com.kanojo.controller"})
public class WebMvcConfig implements WebMvcConfigurer {

    @Autowired
    private TokenToUserArgumentResolver tokenToUserArgumentResolver;

    //配置拦截器(用自定义的拦截器)
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
        resolvers.add(tokenToUserArgumentResolver);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //访问路径
        registry.addResourceHandler("/picture/**")
                //映射路径
                .addResourceLocations("file:" + "D:\\Temp" + "/");


    }

    /*
        配置跨域
     */
    @Bean
    public CorsFilter corsFilter() {
        //创建CorsConfiguration对象后添加配置
        CorsConfiguration config = new CorsConfiguration();
        //设置放行哪些原始域，这里直接设置为所有
        config.addAllowedOriginPattern("*");
        //你可以单独设置放行哪些原始域 config.addAllowedOrigin("http://localhost:2222");
        //放行哪些原始请求头部信息
        config.addAllowedHeader("*");
        //放行哪些请求方式，*代表所有
        config.addAllowedMethod("*");
        //是否允许发送Cookie，必须要开启，因为我们的JSESSIONID需要在Cookie中携带
        config.setAllowCredentials(true);
        //映射路径
        UrlBasedCorsConfigurationSource corsConfigurationSource = new UrlBasedCorsConfigurationSource();
        corsConfigurationSource.registerCorsConfiguration("/**", config);
        //返回CorsFilter
        return new CorsFilter(corsConfigurationSource);
    }
}
