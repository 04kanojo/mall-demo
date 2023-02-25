package com.kanojo.util;

import org.apache.commons.codec.digest.DigestUtils;

import java.util.Random;

public class tokenUtil {
    public static String getToken(Long userId) {
        StringBuilder sb = new StringBuilder();
        //4个随机数
        Random r = new Random();
        for (int i = 0; i < 4; i++) {
            sb.append(r.nextInt(10));
        }
        //用户id
        sb.append(userId);
        //时间
        sb.append(System.currentTimeMillis());
        int hashCode = sb.hashCode();
        String result = String.valueOf((hashCode ^ System.currentTimeMillis()));
        result = DigestUtils.md5Hex(result);
        return result;
    }
}
