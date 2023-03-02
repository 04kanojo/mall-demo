package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.controller.param.ZheKouParam;
import com.kanojo.mapper.GoodsMapper;
import com.kanojo.pojo.Goods;
import com.kanojo.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> getGoods(PageParam pageParam) {
        return goodsMapper.selectList(null);
//        int start = pageParam.getPage() == null ? 0 : pageParam.getPage();
//        int size = pageParam.getLimit() == null ? 10 : pageParam.getPage();
//        IPage<Goods> page = new Page<>(start, size);
//        goodsMapper.selectPage(page, null);
//        return page.getRecords();
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

    @Override
    public boolean deleteGoods(Long goodsId) {
        return goodsMapper.deleteById(goodsId) > 0;
    }

    @Override
    public boolean add(Goods goods) {
        return goodsMapper.insert(goods) > 0;
    }

    @Override
    public boolean update(Goods goods) {
        return goodsMapper.updateById(goods) > 0;
    }

    @Override
    public List<Goods> orderByPrice() {
        LambdaQueryWrapper<Goods> lqw = new LambdaQueryWrapper<>();
        lqw.orderByAsc(Goods::getGoodsPrice);
        return goodsMapper.selectList(lqw);
    }

    @Override
    public List<Goods> orderByNew() {
        LambdaQueryWrapper<Goods> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Goods::getIsNew, 1);
        lqw.orderByAsc(Goods::getGoodsPrice);
        return goodsMapper.selectList(lqw);
    }

    @Override
    public List<Goods> LanGet(PageParam param) {
        IPage<Goods> page = new Page<>(param.getPage(), param.getLimit());
        goodsMapper.selectPage(page, null);
        return page.getRecords();
    }

    @Override
    public boolean updateGoodsZheKou(ZheKouParam zheKouParam) {
        Double zheKouLv = zheKouParam.getZheKouLv();
        Long goodsId = zheKouParam.getGoodsId();
        Date zheKouTimeStart = zheKouParam.getZheKouTimeStart();
        Date zheKouTimeStop = zheKouParam.getZheKouTimeStop();
        Goods goods = new Goods();
        goods.setGoodsId(goodsId);
        goods.setZheKouLv(zheKouLv);
        goods.setZheKouTimeStart(zheKouTimeStart);
        goods.setZheKouTimeStop(zheKouTimeStop);
        return goodsMapper.updateById(goods) > 0;
    }

    @Override
    public List<Goods> getFlGoods(Long flId) {
        LambdaQueryWrapper<Goods> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Goods::getFlId, flId);
        return goodsMapper.selectList(lqw);
    }
}
