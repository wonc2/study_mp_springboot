package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.hr.dao.HRDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class HRService {
    @Autowired
    HRDao hrDao;

    public Object findAllEmployees(Map sortOption) {
//        param :   data: {
//                    option: sortOption,
//                    month: sortMonth
//                },
//        근무자 이름(emp_Name), 근무자 이메일(emp_Email), 부서명(dep_Name), 출근율(att_Rate)
//          type은 List<Map<String, String>>
        return null;
    }

    public Object deleteEmployee(String empEmail) {
//       return type 은 직원 삭제 여부
//       "{\"status\": \"success\"}"
        return null;
    }

    public Object findEmpWorkAttendance(String empName) {
//        근태 pk (attend_Id), 근태 상태(status), 날짜(workday)
//    return type => List<Map<String, String>
        return null;
    }

    public Object findTotalAttend(String empName) {
//        return type => Map<String, String>
//        총 출근 일수(total_workdays) 결근 일수(total_absence) 휴가 일수(total_vacation)
        return null;
    }

    public Object getEmpInfoByEmail(String empEmail) {
        return null;
    }
}
