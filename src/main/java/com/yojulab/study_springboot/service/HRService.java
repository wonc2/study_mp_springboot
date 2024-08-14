package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.HRDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class HRService {
    @Autowired
    HRDao hrDao;


}
