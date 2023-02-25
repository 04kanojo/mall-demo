package com.kanojo.service;

import com.kanojo.pojo.Address;

import java.util.List;

public interface AddressService {
    boolean addAddress(Address address);

    List<Address> getAddress(Long userId);

    boolean delete(Long addressId);
}
