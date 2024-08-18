package com.yojulab.study_springboot.hr.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Service
public class HRService {
    @Autowired
    SharedDao sharedDao;

    public Object findAllEmployees(Map sortOption) {
//        param :   data: {
//                    option: sortOption,
//                    month: sortMonth
//                },
//        근무자 이름(emp_Name), 근무자 이메일(emp_Email), 부서명(dep_Name), 출근율(att_Rate)
//          type은 List<Map<String, String>>

        String sqlMapId = "HrCommonMapper.findAllEmployees";
        return sharedDao.getList(sqlMapId, sortOption);
    }

    @Transactional
    public Object deleteEmployee(String empEmail) {
//       return type 은 직원 삭제 여부
//       "{\"status\": \"success\"}"

        String sqlMapIdAuths = "HrAuthsMapper.deleteEmp";
        String sqlMapIdAttend = "HrAttendMapper.deleteEmp";
        String sqlMapIdEmp = "HrEmpMapper.delete";

        try {
            sharedDao.delete(sqlMapIdAuths, empEmail);
            sharedDao.delete(sqlMapIdAttend, empEmail);
            sharedDao.delete(sqlMapIdEmp, empEmail);

            return "{\"status\": \"success\"}";
        } catch (Exception e) {
            return null;
        }
    }

    public Object findEmpWorkAttendance(Map dataMap) {
//        근태 pk (attend_Id), 근태 상태(status), 날짜(workday)
//    return type => List<Map<String, String>

        String sqlMapIdAttend = "HrCommonMapper.findEmpWorkAttendance";
        return sharedDao.getList(sqlMapIdAttend, dataMap);
    }

    public Object findTotalAttend(Map dataMap) {
//        return type => Map<String, String>
//        총 출근 일수(total_workdays) 결근 일수(total_absence) 휴가 일수(total_vacation)

        String sqlMapIdAttend = "HrCommonMapper.findTotalAttend";
        return sharedDao.getOne(sqlMapIdAttend, dataMap);
    }

    public Object getEmpInfoByEmail(Map dataMap) {
//        empName, depName

        String sqlMapIdAttend = "HrCommonMapper.getEmpInfoByEmail";
        return sharedDao.getOne(sqlMapIdAttend, dataMap.get("empEmail"));
    }

    public Object deleteAttend(String attend_Id) {
        Map<String,String> rs = new HashMap<>();

        String sqlMapId = "HrAttendMapper.delete";

        try {
            sharedDao.delete(sqlMapId, attend_Id);
            rs.put("status", "success");
            return rs;
        }catch (Exception e) {
            return null;
        }
    }

    public Object insertWorkAttendanceByDate(Map dataMap) {
        Map<String,String> rs = new HashMap<>();

        String sqlMapId = "HrAttendMapper.insert";
        String sqlMapGetEmpId = "HrCommonMapper.getEmpIdByEmail";

        try {
            String empId = (String) sharedDao.getOne(sqlMapGetEmpId, dataMap.get("empEmail"));
            dataMap.put("empId", empId);
            sharedDao.insert(sqlMapId, dataMap);
            rs.put("status", "success");
            return rs;
        }catch (Exception e) {
            return null;
        }
    }
}