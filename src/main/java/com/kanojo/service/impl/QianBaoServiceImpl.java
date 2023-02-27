package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kanojo.controller.param.QianBaoParam;
import com.kanojo.mapper.QianbaoMapper;
import com.kanojo.pojo.QianBao;
import com.kanojo.pojo.User;
import com.kanojo.service.QianBaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QianBaoServiceImpl implements QianBaoService {
    @Autowired
    private QianbaoMapper qianbaoMapper;


    @Override
    public boolean update(QianBaoParam qianBaoParam) {
        Long userId = qianBaoParam.getUserId();
        Long money = qianBaoParam.getMoney();
        QianBao qianbao = qianbaoMapper.selectById(userId);
        Long totalMoney = qianbao.getTotalMoney();
        Long totalChongzhi = qianbao.getTotalChongZhi();

        QianBao qianBao = new QianBao();
        qianBao.setUserId(userId);
        qianBao.setTotalChongZhi(totalMoney + money);
        qianBao.setTotalMoney(totalChongzhi + money);
        return qianbaoMapper.updateById(qianBao) > 0;
    }

    @Override
    public void add(Long userId) {
        QianBao qianBao = new QianBao();
        qianBao.setUserId(userId);
        qianbaoMapper.insert(qianBao);
    }

    @Override
    public List<QianBao> get(Long userId) {
        LambdaQueryWrapper<QianBao> lqw = new LambdaQueryWrapper<>();
        lqw.eq(QianBao::getUserId, userId);
        return qianbaoMapper.selectList(lqw);
    }
}
