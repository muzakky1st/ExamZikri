package com.Exam.Controller;

import com.Exam.Service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExamController {

    @Autowired
    private ExamService examService;

    @RequestMapping("/input")
    public String getBank (@RequestParam String bankCode){
        return examService.getBank(bankCode);
    }
}
