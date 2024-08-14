package com.yojulab.study_springboot.hr.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Transactional
@Service
public class AuthNamesService {
    @Autowired
    SharedDao sharedDao;

    public Object insert(Map dataMap) {
        String sqlMapId = "AuthNames.insert";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }


    public Object delete(Map dataMap) {
        String sqlMapId = "AuthNames.delete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
}
