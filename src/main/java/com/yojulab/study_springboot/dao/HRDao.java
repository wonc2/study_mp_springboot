package com.yojulab.study_springboot.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HRDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

//    public Object createEmpAttendance(String email, String date) {
//
//    }


}
