package com.kanojo.service;

import com.kanojo.controller.vo.AddressVO;
import com.kanojo.pojo.Address;

import java.util.List;

public interface AddressService {
    boolean addAddress(Address address);

    List<AddressVO> getAddress(Long userId);

    boolean delete(Long addressId);

    boolean updateDefault(Long userId);

    boolean update(Address address);

    Address getById(Long addressId);
}
