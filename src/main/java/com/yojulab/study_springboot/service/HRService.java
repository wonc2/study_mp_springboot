package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.hr.dao.HRDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HRService {
    @Autowired
    HRDao hrDao;


}
