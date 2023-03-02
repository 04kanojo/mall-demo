package com.kanojo.service.impl;

import com.kanojo.mapper.FlMapper;
import com.kanojo.pojo.fenLei;
import com.kanojo.service.FlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlServiceImpl implements FlService {

    @Autowired
    private FlMapper flMapper;

    @Override
    public List<fenLei> getFlName() {
        return flMapper.selectList(null);
    }
}
