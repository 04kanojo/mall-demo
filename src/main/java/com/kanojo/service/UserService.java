package com.kanojo.service;


import com.kanojo.controller.param.LoginParam;
import com.kanojo.controller.vo.CollectionVO;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.User;
import com.kanojo.pojo.UserCollection;

import java.util.List;

public interface UserService {
    String login(LoginParam loginParam);

    boolean saveCollection(UserCollection userCollection);

    List<CollectionVO> getCollection(Long userId);

    boolean updateCollectionStatus(Long userCollectionId);

    boolean register(User user);

    boolean upload(String path, Long userId);

    List<User> getVip();

    boolean resetPassword(Long userId);

    List<User> getAllUser();

    boolean logout(Long userId);

    boolean delete(Long userId);

    boolean update(String token, Long userId, User user);

    boolean uploadAva(String path, Long userId, String token);
}
