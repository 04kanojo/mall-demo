package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.mapper.GoodsMapper;
import com.kanojo.pojo.Goods;
import com.kanojo.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> getGoods(PageParam pageParam) {
        int start = pageParam.getPage() == null ? 0 : pageParam.getPage();
        int size = pageParam.getLimit() == null ? 10 : pageParam.getPage();
        IPage<Goods> page = new Page<>(start, size);
        goodsMapper.selectPage(page, null);
        return page.getRecords();
    }

    @Override
    public Goods getByUserId(Long goodsId) {
        return goodsMapper.selectById(goodsId);
    }

    @Override
    public Goods getById(Long goodsId) {
        return goodsMapper.selectById(goodsId);
    }

    @Override
    public List<Goods> conditionQuery(ConditionParam conditionParam) {
        LambdaQueryWrapper<Goods> lqw = new LambdaQueryWrapper<>();
        String goodsName = conditionParam.getGoodsName();
        Double maxPrice = conditionParam.getMaxPrice();
        Double minPrice = conditionParam.getMinPrice();
        lqw.like(goodsName != null && !"".equals(goodsName), Goods::getGoodsName, goodsName)
                .or()
                .like(goodsName != null && !"".equals(goodsName), Goods::getGoodsInfo, goodsName)
                .or()
                .between(minPrice != null || maxPrice != null, Goods::getGoodsPrice, minPrice, maxPrice);
        return goodsMapper.selectList(lqw);
    }
}
