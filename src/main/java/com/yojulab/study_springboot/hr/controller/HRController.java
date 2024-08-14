package com.yojulab.study_springboot.hr.controller;

import com.yojulab.study_springboot.hr.service.DepartmentService;
import com.yojulab.study_springboot.hr.service.EmployeeService;
import com.yojulab.study_springboot.hr.service.TimeAttendanceService;
import com.yojulab.study_springboot.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class HRController {
    @Autowired
    HRService hrService;
    @Autowired
    EmployeeService employeeService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    TimeAttendanceService timeAttendanceService;

    @GetMapping({ "/hr/insertAttend" }) // 관리자 접속하는 곳
    public ModelAndView insertAttend(ModelAndView modelAndView) {
        String viewName = "/WEB-INF/views/hr_manage/insert_form.jsp";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }
    @GetMapping({ "/hr/employeesList" }) // 관리자 접속하는 곳
    public ModelAndView employeesList(ModelAndView modelAndView) {
        String viewName = "/WEB-INF/views/hr_manage/employee_list.jsp";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }


    @GetMapping("/readAtdByDept/{deptName}/{email}")
    // 부서별 근태 현황 조회
    public ResponseEntity<Object> findDepartmemtWorkAttendance(@PathVariable String deptName, @PathVariable String email) {
        HashMap resultMap = new HashMap<>();
        resultMap.put("deptName", deptName);
        resultMap.put("email", email);

        resultMap = (HashMap) departmentService.insert(resultMap);

        return ResponseEntity.ok().body(resultMap);
    }

    @GetMapping("/readEmployee")
    public ResponseEntity<Object> findAllEmployees(@PathVariable String sortOption, @RequestParam Map params) {
        Object rs = hrService.findAllEmployees(params);
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
    @GetMapping("/readAtdByEmp/{empEmail}")
    public String readAtdByEmp(@PathVariable String empEmail, Model model) {
        HashMap empInfo = (HashMap) hrService.getEmpInfoByEmail(empEmail);
        HashMap totalMap = (HashMap) hrService.findTotalAttend(empEmail);
        List workingList = (List) hrService.findEmpWorkAttendance(empEmail);

        model.addAttribute("empInfo", empInfo); // empName을 JSP에 전달
        model.addAttribute("workingList", workingList);
        model.addAttribute("totalMap", totalMap);// depName을 JSP에 전달
        return "/WEB-INF/views/hr_manage/employee_work_list.jsp"; // JSP 파일 이름
    }

    // 사원 근태 입력
    @PostMapping("/insert")
    public ResponseEntity<Object> insertWorkAttendanceByDate(@RequestParam Map params) {
        HashMap resultMap = (HashMap) employeeService.insert(params);
        return ResponseEntity.ok().body(resultMap);
    }

    // 사원의 해당 날짜의 근태 삭제
    @PostMapping("/deleteWorkAttendance/{attend_id}")
    public ResponseEntity<Object> deleteWorkAttendance(@PathVariable String attend_id) {
        HashMap resultMap = (HashMap) timeAttendanceService.delete(attend_id);

        return ResponseEntity.ok().body(resultMap);
    }

}