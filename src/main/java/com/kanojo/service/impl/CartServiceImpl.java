package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.kanojo.controller.param.UpdateCartParam;
import com.kanojo.controller.vo.CartVO;
import com.kanojo.mapper.CartMapper;
import com.kanojo.pojo.Cart;
import com.kanojo.pojo.Goods;
import com.kanojo.service.CartService;
import com.kanojo.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private GoodsService goodsService;

    @Override
    public boolean addCart(Cart cart) {
        Long userId = cart.getUserId();
        Long goodsId = cart.getGoodsId();
        LambdaQueryWrapper<Cart> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Cart::getUserId, userId).eq(Cart::getGoodsId, goodsId);
        Cart test = cartMapper.selectOne(lqw);
        if (!Objects.isNull(test)) {
            LambdaUpdateWrapper<Cart> luw = new LambdaUpdateWrapper<>();
            luw.eq(Cart::getCartId, test.getCartId()).set(Cart::getGoodsNum, test.getGoodsNum() + 1);
            return cartMapper.update(null, luw) > 0;
        }
        cart.setGoodsNum(1);
        return cartMapper.insert(cart) > 0;
    }

    @Override
    public boolean delete(Long cartId) {
        return cartMapper.deleteById(cartId) > 0;
    }

    @Override
    public List<CartVO> getCart(Long userId) {
        LambdaQueryWrapper<Cart> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Cart::getUserId, userId);
        List<Cart> carts = cartMapper.selectList(lqw);
        List<CartVO> list = new ArrayList<>();
        if (carts.size() != 0) {
            for (Cart cart : carts) {
                CartVO cartVO = new CartVO();
                //获取购物车里面的数量单价和id
                Long cartId = cart.getCartId();
                Integer goodsNum = cart.getGoodsNum();
                //通过goodsId获取其余信息
                Long goodsId = cart.getGoodsId();
                Goods goods = goodsService.getById(goodsId);
                String goodsInfo = goods.getGoodsInfo();
                String goodsImage = goods.getGoodsImage();
                String goodsName = goods.getGoodsName();
                Double goodsPrice = goods.getGoodsPrice();

                cartVO.setCartId(cartId);
                cartVO.setGoodsId(goods.getGoodsId());
                cartVO.setGoodsNum(goodsNum);
                cartVO.setGoodsPrice(goodsPrice);
                cartVO.setGoodsName(goodsName);
                cartVO.setGoodsInfo(goodsInfo);
                cartVO.setGoodsImage(goodsImage);

                list.add(cartVO);
            }
        }
        return list;
    }

    @Override
    public boolean updateNum(UpdateCartParam param) {
        LambdaUpdateWrapper<Cart> luw = new LambdaUpdateWrapper<>();
        luw.eq(Cart::getCartId, param.getCartId()).set(Cart::getGoodsNum, param.getGoodsNum());
        return cartMapper.update(null, luw) > 0;
    }

    @Override
    public boolean deleteAll(Long userId) {
        LambdaQueryWrapper<Cart> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Cart::getUserId, userId);
        List<Cart> carts = cartMapper.selectList(lqw);
        for (Cart cart : carts) {
            cartMapper.deleteById(cart.getCartId());
        }
        return true;
    }
}
