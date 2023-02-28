package com.kanojo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.kanojo.controller.vo.AddressVO;
import com.kanojo.mapper.AddressMapper;
import com.kanojo.pojo.Address;
import com.kanojo.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public List<AddressVO> getAddress(Long userId) {
        LambdaQueryWrapper<Address> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Address::getUserId, userId);
        List<Address> addresses = addressMapper.selectList(lqw);
        List<AddressVO> list = new ArrayList<>();
        for (Address address : addresses) {
            String addr = address.getProvince() + address.getCity() + address.getRegion() + address.getDetail();
            String phone = address.getPhone();
            String userName = address.getUserName();
            String id = address.getAddressId().toString();

            AddressVO addressVO = new AddressVO();
            addressVO.setId(id);
            addressVO.setAddress(addr);
            addressVO.setTel(phone);
            addressVO.setName(userName);
            list.add(addressVO);
        }
        return list;
    }

    @Override
    public boolean delete(Long addressId) {
        return addressMapper.deleteById(addressId) > 0;
    }

    @Override
    public boolean updateDefault(Long userId) {

        return true;
    }

    @Override
    public boolean update(Address address) {
        Boolean flag = address.getIsDefault();
        if (flag) {
            LambdaQueryWrapper<Address> lqw = new LambdaQueryWrapper<>();
            lqw.eq(Address::getUserId, address.getUserId());
            List<Address> addresses = addressMapper.selectList(lqw);
            for (Address address1 : addresses) {
                Boolean isDefault = address1.getIsDefault();
                if (isDefault) {
                    address1.setIsDefault(false);
                    addressMapper.updateById(address1);
                    break;
                }
            }
        }
        return addressMapper.updateById(address) > 0;
    }

    @Override
    public Address getById(Long addressId) {
        return addressMapper.selectById(addressId);
    }
}
