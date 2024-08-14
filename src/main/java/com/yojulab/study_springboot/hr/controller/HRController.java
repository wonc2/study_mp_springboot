package com.yojulab.study_springboot.hr.controller;

import com.yojulab.study_springboot.hr.service.AuthsService;
import com.yojulab.study_springboot.hr.service.DepartmentService;
import com.yojulab.study_springboot.hr.service.EmployeeService;
import com.yojulab.study_springboot.hr.service.TimeAttendanceService;
import com.yojulab.study_springboot.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class HRController {
    @Autowired
    HRService hrService;
    EmployeeService employeeService;
    AuthsService authsService;
    DepartmentService departmentService;
    TimeAttendanceService timeAttendanceService;

    @GetMapping("/readAtdByDept/{deptName}/{email}")
    // 부서별 근태 현황 조회
    public ResponseEntity<Object> findDepartmemtWorkAttendance(@PathVariable String deptName, @PathVariable String email) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("deptName", deptName);
        resultMap.put("email", email);

        resultMap = (HashMap) departmentService.insert(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }

    @GetMapping("/readEmployee/{sortOption}")
    public ResponseEntity<Object> findAllEmployees(@PathVariable String sortOption) {
        Object rs = hrService.findAllEmployees(sortOption);
//        근무자 이름(emp_Name), 근무자 이메일(emp_Email), 부서명(dep_Name), 출근율(att_Rate)

        return ResponseEntity.ok().body(rs);
    }

    @PostMapping("/deleteEmployee/{empEmail}")
    public ResponseEntity<Object> deleteEmployee(@PathVariable String empEmail) {
        Object rs = hrService.deleteEmployee(empEmail);
//        사원 삭제
//            return ResponseEntity.ok().body("{\"status\": \"success\"}");
        return ResponseEntity.ok().body(rs);
    }

    @GetMapping("/readAtdByEmp/{empName}")
    // 사원별 근태 조회
    public ResponseEntity<Object> findEmpWorkAttendance(@PathVariable String empName) {
        Map<String, Object> map = new HashMap<>();
        List workingList = (List) hrService.findEmpWorkAttendance(empName);
        map.put("WorkingList", workingList);
        HashMap totalAttend = (HashMap) hrService.findTotalAttend(empName);
        map.put("totalAttend", totalAttend);
        return ResponseEntity.ok().body(map);
    }

    // 사원 근태 입력
    @PostMapping("/insert")
    public ResponseEntity<Object> insertWorkAttendanceByDate(@PathVariable String email, @RequestParam Map params) {
        HashMap resultMap = (HashMap) employeeService.insert(params);
        return ResponseEntity.ok().body(resultMap);
    }

    // 사원의 해당 날짜의 근태 삭제
    @PostMapping("/deleteMember/{email}/{date}")
    public ResponseEntity<Object> deleteWorkAttendance(@PathVariable String email, String date) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("email", email);
        resultMap.put("date", date);

        resultMap = (HashMap) timeAttendanceService.delete(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }
}
