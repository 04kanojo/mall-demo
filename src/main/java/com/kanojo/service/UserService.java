package com.kanojo.service;


import com.kanojo.controller.param.LoginParam;
import com.kanojo.controller.vo.CollectionVO;
import com.kanojo.pojo.User;
import com.kanojo.pojo.UserCollection;

import java.util.List;

public interface UserService {
    String login(LoginParam loginParam);

    boolean saveCollection(UserCollection userCollection);

    List<CollectionVO> getCollection(Long userId);

    boolean updateCollectionStatus(Long userCollectionId);

    boolean register(User user);
}
