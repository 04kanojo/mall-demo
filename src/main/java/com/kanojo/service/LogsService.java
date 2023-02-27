package com.kanojo.service;

import com.kanojo.pojo.Logs;

import java.util.List;

public interface LogsService {
    boolean add(Logs logs);

    List<Logs> getAllLogs();
}
