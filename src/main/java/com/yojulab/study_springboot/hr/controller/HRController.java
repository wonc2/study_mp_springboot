package com.yojulab.study_springboot.hr.controller;

import com.yojulab.study_springboot.hr.service.DepartmentService;
import com.yojulab.study_springboot.hr.service.EmployeeService;
import com.yojulab.study_springboot.hr.service.TimeAttendanceService;
import com.yojulab.study_springboot.service.AttendanceService;
import com.yojulab.study_springboot.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/hr")
public class HRController {
    @Autowired
    HRService hrService;
    @Autowired
    EmployeeService employeeService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    TimeAttendanceService timeAttendanceService;

    @Autowired
    AttendanceService attendanceService;

    @GetMapping("/readAtdByDept/{deptName}/{email}")
    // 부서별 근태 현황 조회
    public ResponseEntity<Object> findDepartmemtWorkAttendance(@PathVariable String deptName, @PathVariable String email) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("deptName", deptName);
        resultMap.put("email", email);

        resultMap = (HashMap) departmentService.insert(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }

    /*@GetMapping("/readAtdByEmp/{empId}")
    // 사원별 근태 조회
    public ResponseEntity<Object> findEmpWorkAttendance(@PathVariable String empId) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("empId",empId);

        return ResponseEntity.ok().body(resultMap);
    }*/

    // 사원 근태 입력
    @PostMapping("/insert/{email}/{date}")
    public ResponseEntity<Object> insertWorkAttendanceByDate(@PathVariable String email, String date) {
        HashMap<String, String> resultMap = new HashMap<>();
        resultMap.put("email", email);
        resultMap.put("date", date);

        resultMap = (HashMap<String, String>) employeeService.insert(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }

    // 사원의 해당 날짜의 근태 삭제
    @PostMapping("/deleteMember/{email}/{date}")
    public ResponseEntity<Object> deleteWorkAttendance(@PathVariable String email, String date) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("email",email);
        resultMap.put("date",date);

        resultMap = (HashMap) timeAttendanceService.delete(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }

//    @GetMapping("/employee_work_list")
//    public ResponseEntity<Object> employeeWorkList() {
//        Map result = new HashMap<>();
//        result = attendanceService.selectEmpAttendList(result);
//        return ResponseEntity.ok().body(result);
//    }
}