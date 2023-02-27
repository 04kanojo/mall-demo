package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kanojo.mapper.ZujiMapper;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.Zuji;
import com.kanojo.service.GoodsService;
import com.kanojo.service.ZujiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ZujiServiceimpl implements ZujiService {

    @Autowired
    private ZujiMapper zujiMapper;

    @Autowired
    private GoodsService goodsService;

    @Override
    public List<Goods> get(Long userId) {
        LambdaQueryWrapper<Zuji> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Zuji::getUserId, userId);
        List<Zuji> zujis = zujiMapper.selectList(lqw);
        List<Goods> list = new ArrayList<>();
        for (Zuji zuji : zujis) {
            Long goodsId = zuji.getGoodsId();
            Goods byId = goodsService.getById(goodsId);
            list.add(byId);
        }
        return list;
    }

    @Override
    public boolean delete() {
        return zujiMapper.delete(null) > 0;
    }

    @Override
    public void add(Zuji zuji) {
        zujiMapper.insert(zuji);
    }
}
