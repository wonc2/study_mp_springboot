package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Transactional
@Service
public class AttendanceService {

    @Autowired
    SharedDao sharedDao;

    public Map selectListByDepartment(Map dataMap) {
        String sqlMapId = "Attendance.selectListByDepartment";

        HashMap result = new HashMap<>();


        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }


}
