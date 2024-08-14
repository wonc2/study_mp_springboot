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
import java.util.Map;

@Controller
@RequestMapping("/hr")
public class HrManageController {

    @Autowired
    AttendanceService attendanceService;

    @GetMapping("/workdaylist")
    public ModelAndView workdaylist(ModelAndView modelAndView) {
//        Map<String, Object> map = new HashMap<>();
//        Object result = attendanceService.selectDays(map);
//
//        modelAndView.addObject("params", map);
//        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/hr_manage/employee_work_list.jsp");
        return modelAndView;
    }

    @GetMapping("/emplist")
    public ModelAndView emplist(ModelAndView modelAndView) {

        modelAndView.setViewName("/WEB-INF/views/hr_manage/employee_list.jsp");
        return modelAndView;
    }

    @PostMapping("/insert")
    public ModelAndView insert(@RequestParam Map params, ModelAndView modelAndView) {

        modelAndView.setViewName("/WEB-INF/views/hr_manage/insert_form.jsp");
        return modelAndView;
    }

}
