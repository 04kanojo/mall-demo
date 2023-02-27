package com.kanojo.service;


import com.kanojo.pojo.Goods;
import com.kanojo.pojo.Zuji;

import java.util.List;

public interface ZujiService {
    List<Goods> get(Long userId);

    boolean delete();

    void add(Zuji zuji);
}
