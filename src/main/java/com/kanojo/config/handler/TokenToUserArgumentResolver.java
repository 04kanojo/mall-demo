package com.kanojo.config.handler;

import com.alicp.jetcache.Cache;
import com.alicp.jetcache.anno.CreateCache;
import com.kanojo.advice.exception.MyException;
import com.kanojo.config.annotation.TokenToUser;
import com.kanojo.pojo.User;
import org.springframework.core.MethodParameter;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

@Component
public class TokenToUserArgumentResolver implements HandlerMethodArgumentResolver {

    @CreateCache(name = "userCache_", expire = 1, timeUnit = TimeUnit.DAYS)
    private Cache<String, User> tokenCache;

    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(com.kanojo.config.annotation.TokenToUser.class);
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
        String token = webRequest.getHeader("token");
        if (null == token || "".equals(token)) {
            throw new MyException(666, "未登录");
        }
        User user = tokenCache.get(token);
        if (Objects.isNull(user)) {
            throw new MyException(666, "token错误或者已过期");
        }
        //判断权限
        TokenToUser parameterAnnotation = parameter.getParameterAnnotation(TokenToUser.class);
        String[] types = parameterAnnotation.value();
        for (String type : types) {
            if (type.equals(user.getType())) {
                return user;
            }
        }
        throw new MyException(666, "权限不足");
    }
}
