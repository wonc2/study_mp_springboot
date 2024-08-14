package com.yojulab.study_springboot.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/r/hr")
public class HrRestController {

    @Autowired
    DepartmentService hrService;

    @GetMapping("/main")  // @PostMapping 사용 (request body를 포함하기 때문에)
    public ResponseEntity<Map<String, Object>> displayMain() {
//        @PostMapping("/main")
//        public ResponseEntity displayMain(@RequestBody Map paramMap) {
        Map<String, Object> result = new HashMap<>();

        try {
            // 서비스 호출
//            result = hrService.insert(paramMap);

            // 예시로 추가적인 정보 삽입
            result.put("status", "success");
        } catch (Exception e) {
            result.put("status", "error");
            result.put("message", e.getMessage());
            return ResponseEntity.badRequest().body(result);  // 상태 코드 400과 함께 에러 메시지 반환
        }
        return ResponseEntity.ok().body(result); // 상태 코드 200과 함께 결과 반환
    }
}