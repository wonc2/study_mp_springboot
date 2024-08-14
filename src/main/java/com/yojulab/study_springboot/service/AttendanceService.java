package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

    public Map selectEmpAttendList(Map dataMap) {
        String sqlMapId = "Attendance.selectEmpAttendList";

        HashMap result = new HashMap<>();

        for (Object o : result.entrySet()) {
            System.out.println(o);
        }



        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public Map selectDays(Map dataMap) {
        String sqlMapId = "Attendance.selectDays";

        HashMap result = new HashMap<>();




        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public Map insert(HashMap dataMap) {
        return dataMap;
    }

    public Map delete(HashMap dataMap) {
        return dataMap;
    }
}
