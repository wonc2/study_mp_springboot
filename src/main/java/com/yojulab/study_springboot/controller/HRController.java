package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
public class HRController {
    @Autowired
    HRService hrService;

    @GetMapping("/readAtdByDept/{deptName}/{email}")
    // 부서별 근태 현황 조회
    public ResponseEntity<Object> findDepartmemtWorkAttendance(@PathVariable String deptName, @PathVariable String email) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("deptName", deptName);
        resultMap.put("email", email);

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

        return ResponseEntity.ok().body(resultMap);
    }

    // 사원의 해당 날짜의 근태 삭제
    @PostMapping("/deleteMember/{email}/{date}")
    public ResponseEntity<Object> deleteWorkAttendance(@PathVariable String email, String date) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("email",email);
        resultMap.put("date",date);

        return ResponseEntity.ok().body(resultMap);
    }
}
