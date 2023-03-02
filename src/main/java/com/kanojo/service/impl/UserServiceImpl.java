package com.kanojo.service.impl;

import com.alicp.jetcache.Cache;
import com.alicp.jetcache.anno.CreateCache;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.kanojo.controller.param.LoginParam;
import com.kanojo.controller.vo.CollectionVO;
import com.kanojo.mapper.UserCollectionMapper;
import com.kanojo.mapper.UserMapper;
import com.kanojo.pojo.Goods;
import com.kanojo.pojo.User;
import com.kanojo.pojo.UserCollection;
import com.kanojo.service.GoodsService;
import com.kanojo.service.UserService;
import com.kanojo.util.tokenUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserCollectionMapper userCollectionMapper;

    @Autowired
    private GoodsService goodsService;

    @CreateCache(name = "userCache_", expire = 1, timeUnit = TimeUnit.DAYS)
    private Cache<String, User> tokenCache;

    @Override
    public String login(LoginParam loginParam) {
        LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<>();
        String password = loginParam.getPassword() + "woshidashabi";
        lqw.eq(User::getLoginName, loginParam.getLoginName()).eq(User::getPassword, DigestUtils.md5Hex(password));
        User user = userMapper.selectOne(lqw);
        if (user != null) {
            //生成或更新token
            String token = tokenUtil.getToken(user.getUserId());
            tokenCache.put(token, user);
            return token;
        }
        return null;
    }

    @Override
    public boolean saveCollection(UserCollection userCollection) {
        //查找此用户的收藏是否已进入数据库
        LambdaQueryWrapper<UserCollection> lqw = new LambdaQueryWrapper<>();
        lqw.eq(UserCollection::getUserId, userCollection.getUserId())
                .eq(UserCollection::getGoodsId, userCollection.getGoodsId());
        UserCollection one = userCollectionMapper.selectOne(lqw);
        if (one != null) {
            one.setStatus(1);
            return userCollectionMapper.updateById(one) > 0;
        }
        //第一次收藏就添加进入数据库
        return userCollectionMapper.insert(userCollection) > 0;
    }

    @Override
    public List<CollectionVO> getCollection(Long userId) {
        //查询指定用户的收藏商品
        LambdaQueryWrapper<UserCollection> lqw = new LambdaQueryWrapper<>();
        lqw.eq(UserCollection::getUserId, userId).eq(UserCollection::getStatus, 1);
        List<UserCollection> userCollections = userCollectionMapper.selectList(lqw);
        //通过商品id查询商品的细节
        List<CollectionVO> goodsList = new ArrayList<>();
        for (UserCollection userCollection : userCollections) {
            Goods goods = goodsService.getById(userCollection.getGoodsId());
            CollectionVO vo = new CollectionVO(userCollection.getCollectionId(),
                    goods.getGoodsId(),
                    goods.getGoodsName(),
                    goods.getGoodsInfo(),
                    goods.getGoodsImage(),
                    goods.getGoodsNum());
            goodsList.add(vo);
        }
        return goodsList;
    }

    @Override
    public boolean updateCollectionStatus(Long userCollectionId) {
        LambdaUpdateWrapper<UserCollection> luw = new LambdaUpdateWrapper<>();
        luw.eq(UserCollection::getCollectionId, userCollectionId).set(UserCollection::getStatus, 0);
        return userCollectionMapper.update(null, luw) > 0;
    }

    @Override
    public boolean register(User user) {
        String password = user.getPassword() + "woshidashabi";
        user.setPassword(DigestUtils.md5Hex(password));
        return userMapper.insert(user) > 0;
    }

    @Override
    public boolean upload(String path, Long userId) {
        LambdaUpdateWrapper<User> luw = new LambdaUpdateWrapper<>();
        luw.eq(User::getUserId, userId).set(User::getAvatar, path);
        userMapper.update(null, luw);
        return false;
    }

    @Override
    public List<User> getVip() {
        LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<>();
        lqw.eq(User::getVip, 1);
        return userMapper.selectList(lqw);
    }

    @Override
    public boolean resetPassword(Long userId) {
        LambdaUpdateWrapper<User> luw = new LambdaUpdateWrapper<>();
        luw.eq(User::getUserId, userId).set(User::getPassword, DigestUtils.md5Hex(123456 + "woshidashabi"));
        return userMapper.update(null, luw) > 0;
    }

    @Override
    public List<User> getAllUser() {
        LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<>();
        lqw.eq(User::getType, "user");
        return userMapper.selectList(lqw);
    }

    @Override
    public boolean logout(Long userId) {
        LambdaUpdateWrapper<User> luw = new LambdaUpdateWrapper<>();
        luw.eq(User::getUserId, userId).set(User::getStatus, 0);
        return userMapper.update(null, luw) > 0;
    }

    @Override
    public boolean delete(Long userId) {
        return userMapper.deleteById(userId) > 0;
    }

    @Override
    public boolean update(String token, Long userId, User user) {
        String password = user.getPassword();
        user.setPassword(DigestUtils.md5Hex(password + "woshidashabi"));
        user.setType("user");
        user.setUserId(userId);
        userMapper.updateById(user);
        User user1 = userMapper.selectById(userId);
        tokenCache.put(token, user1);
        return true;
    }

    @Override
    public boolean uploadAva(String path, Long userId, String token) {
        LambdaUpdateWrapper<User> luw = new LambdaUpdateWrapper<>();
        luw.eq(User::getUserId, userId).set(User::getAvatar, path);
        boolean flag = userMapper.update(null, luw) > 0;
        if (flag) {
            User user = userMapper.selectById(userId);
            tokenCache.put(token, user);
        }
        return flag;
    }
}
