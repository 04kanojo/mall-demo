package com.kanojo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kanojo.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
