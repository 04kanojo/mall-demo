package com.kanojo.service;

import com.kanojo.controller.param.ConditionParam;
import com.kanojo.controller.param.PageParam;
import com.kanojo.controller.param.ZheKouParam;
import com.kanojo.pojo.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> getGoods(PageParam page);

    Goods getById(Long goodsId);

    List<Goods> conditionQuery(ConditionParam conditionParam);

    boolean deleteGoods(Long goodsId);

    boolean add(Goods goods);

    boolean update(Goods goods);

    List<Goods> orderByPrice();

    List<Goods> orderByNew();

    List<Goods> LanGet(PageParam param);

    boolean updateGoodsZheKou(ZheKouParam zheKouParam);

    List<Goods> getFlGoods(Long flId);
}
