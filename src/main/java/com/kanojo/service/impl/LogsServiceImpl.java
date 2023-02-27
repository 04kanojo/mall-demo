package com.kanojo.service.impl;

import com.kanojo.mapper.LogsMapper;
import com.kanojo.pojo.Logs;
import com.kanojo.service.LogsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogsServiceImpl implements LogsService {
    @Autowired
    private LogsMapper logsMapper;

    public boolean add(Logs logs) {
        return logsMapper.insert(logs) > 0;
    }

    @Override
    public List<Logs> getAllLogs() {
        return logsMapper.selectList(null);
    }
}
