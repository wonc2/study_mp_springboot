package com.yojulab.study_springboot.hr.controller;


import com.yojulab.study_springboot.hr.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HRController {
    @Autowired
    HRService hrService;


//    모든 직원 list
    @GetMapping("/readEmployee")
    public ResponseEntity<Object> findAllEmployees(@RequestParam Map params) {
//        params 에 몇 월인지, 무슨 조건인지 달려있음

        Object rs = hrService.findAllEmployees(params);
//        근무자 이름(emp_Name), 근무자 이메일(emp_Email), 부서명(dep_Name), 출근율(att_Rate)

        return ResponseEntity.ok().body(rs);
    }

    //        사원 삭제
    @PostMapping("/deleteEmployee/{empEmail}")
    public ResponseEntity<Object> deleteEmployee(@PathVariable String empEmail) {
        Object rs = hrService.deleteEmployee(empEmail);
//            return ResponseEntity.ok().body("{\"status\": \"success\"}");
        return ResponseEntity.ok().body(rs);
    }

     /* =======> HrManageController */
//    @GetMapping("/readAtdByEmp/{empEmail}")
//    public String readAtdByEmp(@PathVariable String empEmail, Model model) {
//        HashMap empInfo = (HashMap) hrService.getEmpInfoByEmail(empEmail);
//        HashMap totalMap = (HashMap) hrService.findTotalAttend(empEmail);
//        List workingList = (List) hrService.findEmpWorkAttendance(empEmail);
//
//        model.addAttribute("empInfo", empInfo); // empName을 JSP에 전달
//        model.addAttribute("workingList", workingList);
//        model.addAttribute("totalMap", totalMap);// depName을 JSP에 전달
//        return "/WEB-INF/views/hr_manage/employee_work_list.jsp"; // JSP 파일 이름
//    }

    // 사원 근태 입력
    @PostMapping("/insert")
    public ResponseEntity<Object> insertWorkAttendanceByDate(@RequestParam Map params) {
        HashMap resultMap = (HashMap) hrService.insertWorkAttendanceByDate(params);
        return ResponseEntity.ok().body(resultMap);
    }

    // 사원의 해당 날짜의 근태 삭제
    @PostMapping("/deleteWorkAttendance/{attend_id}")
    public ResponseEntity<Object> deleteWorkAttendance(@PathVariable String attend_id) {
        HashMap resultMap = (HashMap) hrService.deleteAttend(attend_id);

        return ResponseEntity.ok().body(resultMap);
    }
}