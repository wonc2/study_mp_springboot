package com.yojulab.study_springboot.hr.controller;

import com.yojulab.study_springboot.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/hr")
public class HrManageController {

    @Autowired
    AttendanceService attendanceService;
//
//    @GetMapping("/workdaylist")
//    public ModelAndView workdaylist(ModelAndView modelAndView) {
////        Map<String, Object> map = new HashMap<>();
////        Object result = attendanceService.selectDays(map);
////
////        modelAndView.addObject("params", map);
////        modelAndView.addObject("result", result);
//
//        modelAndView.setViewName("/WEB-INF/views/hr_manage/employee_work_list.jsp");
//        return modelAndView;
//    }
// =========> emplist에서 컬럼 누르면 이동
    @GetMapping("/emplist")
    public ModelAndView emplist(ModelAndView modelAndView) {
//        Map<String, Object> map = new HashMap<>();
//        List result = (List) attendanceService.selectDays(map).get("resultList");
//      값 설정 x 기본은 전체 직원 조회

//        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/hr_manage/employee_list.jsp");
        return modelAndView;
    }

    @GetMapping("/insert")
    public ModelAndView insert(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/hr_manage/insert_form.jsp");
        return modelAndView;
    }

}
