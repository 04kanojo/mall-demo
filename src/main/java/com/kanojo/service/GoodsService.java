package com.kanojo.service;

import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.pojo.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> getGoods(PageParam page);

    Goods getByUserId(Long goodsId);

    Goods getById(Long goodsId);

    List<Goods> conditionQuery(ConditionParam conditionParam);

    boolean deleteGoods(Long goodsId);

    boolean add(Goods goods);
}
