package com.yojulab.study_springboot.hr.controller;

import com.yojulab.study_springboot.hr.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/hr")
public class HrManageController {

    @Autowired
    HRService hrService;

// =========>>> emplist에서 컬럼 누르면 이동
    @GetMapping("/emplist")
    public ModelAndView emplist(ModelAndView modelAndView) {
//      값 설정 x 기본은 전체 직원 조회
        modelAndView.setViewName("/WEB-INF/views/hr_manage/employee_list.jsp");
        return modelAndView;
    }

    @GetMapping("/insert")
    public ModelAndView insert(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/hr_manage/insert_form.jsp");
        return modelAndView;
    }

    @GetMapping("/readAtdByEmp/{empEmail}")
    public String readAtdByEmp(@PathVariable String empEmail, Model model, @RequestParam(defaultValue = "08") String month) {
        Map<String, String> map = new HashMap<>();
        map.put("empEmail", empEmail);
        map.put("month", month);
        HashMap empInfo = (HashMap) hrService.getEmpInfoByEmail(map);
        HashMap totalMap = (HashMap) hrService.findTotalAttend(map);
        List workingList = (List) hrService.findEmpWorkAttendance(map);

        model.addAttribute("empInfo", empInfo); // empName을 JSP에 전달
        model.addAttribute("workingList", workingList);
        model.addAttribute("totalMap", totalMap);// depName을 JSP에 전달
        return "/WEB-INF/views/hr_manage/employee_work_list.jsp"; // JSP 파일 이름
    }
}
