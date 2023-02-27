package com.kanojo.service;

import com.kanojo.controller.param.QianBaoParam;
import com.kanojo.pojo.QianBao;

import java.util.List;

public interface QianBaoService {
    boolean update(QianBaoParam qianBaoParam);

    void add(Long userId);

    List<QianBao> get(Long userId);
}
