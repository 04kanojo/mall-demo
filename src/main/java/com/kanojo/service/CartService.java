package com.kanojo.service;

import com.kanojo.controller.param.UpdateCartParam;
import com.kanojo.controller.vo.CartVO;
import com.kanojo.pojo.Cart;

import java.util.List;

public interface CartService {
    boolean addCart(Cart cart);

    boolean delete(Long cartId);

    List<CartVO> getCart(Long userId);

    boolean updateNum(UpdateCartParam param);

    boolean deleteAll(Long userId);
}
