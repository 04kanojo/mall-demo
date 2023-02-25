package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kanojo.mapper.AddressMapper;
import com.kanojo.pojo.Address;
import com.kanojo.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public boolean addAddress(Address address) {
        return addressMapper.insert(address) > 0;
    }

    @Override
    public List<Address> getAddress(Long userId) {
        LambdaQueryWrapper<Address> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Address::getUserId, userId);
        return addressMapper.selectList(lqw);
    }

    @Override
    public boolean delete(Long addressId) {
        return addressMapper.deleteById(addressId) > 0;
    }
}
