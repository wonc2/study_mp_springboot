package com.yojulab.study_springboot.hr.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Transactional
@Service
public class TimeAttendanceService {
    @Autowired
    SharedDao sharedDao;

    public Object insert(Map dataMap) {
        String sqlMapId = "TimeAttendance.insert";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }


    public Object delete(Map dataMap) {
        String sqlMapId = "TimeAttendance.delete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
}
